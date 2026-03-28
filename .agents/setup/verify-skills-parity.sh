#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
AGENTS_DIR="$ROOT_DIR/.agents/skills"
CLAUDE_DIR="$ROOT_DIR/.claude/skills"

tmp_agents="$(mktemp)"
tmp_claude="$(mktemp)"

find "$AGENTS_DIR" -mindepth 1 -maxdepth 1 -type d -printf "%f\n" | sort > "$tmp_agents"
find "$CLAUDE_DIR" -mindepth 1 -maxdepth 1 -type d -printf "%f\n" | sort > "$tmp_claude"

if ! diff -u "$tmp_agents" "$tmp_claude" >/dev/null; then
  echo "Skill directory mismatch between .agents and .claude"
  diff -u "$tmp_agents" "$tmp_claude" || true
  exit 1
fi

has_key() {
  local key="$1"
  local file="$2"
  if command -v rg >/dev/null 2>&1; then
    rg --quiet "$key" "$file"
  else
    grep -q "$key" "$file"
  fi
}

while IFS= read -r skill; do
  src="$AGENTS_DIR/$skill/SKILL.md"
  dst="$CLAUDE_DIR/$skill/SKILL.md"
  [ -f "$src" ] || { echo "Missing canonical SKILL.md for $skill"; exit 1; }
  [ -f "$dst" ] || { echo "Missing generated SKILL.md for $skill"; exit 1; }

  for key in "name:" "description:" "user-invocable:"; do
    if ! has_key "$key" "$src"; then
      echo "Canonical skill $skill missing frontmatter key: $key"
      exit 1
    fi
  done
done < "$tmp_agents"

echo "Skill parity verified: .agents <-> .claude"
