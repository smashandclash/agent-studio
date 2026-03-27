#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
AGENTS_SKILLS_DIR="$ROOT_DIR/.agents/skills"
CLAUDE_SKILLS_DIR="$ROOT_DIR/.claude/skills"
MODE="${1:-generate-claude}"

mkdir -p "$AGENTS_SKILLS_DIR"
mkdir -p "$CLAUDE_SKILLS_DIR"

bootstrap_from_claude() {
  for skill_dir in "$CLAUDE_SKILLS_DIR"/*; do
    [ -d "$skill_dir" ] || continue
    skill_name="$(basename "$skill_dir")"
    src="$skill_dir/SKILL.md"
    [ -f "$src" ] || continue

    dst_dir="$AGENTS_SKILLS_DIR/$skill_name"
    dst="$dst_dir/SKILL.md"
    mkdir -p "$dst_dir"
    cp "$src" "$dst"
  done
  echo "Bootstrapped canonical skills from .claude -> .agents"
}

generate_claude_from_agents() {
  for skill_dir in "$AGENTS_SKILLS_DIR"/*; do
    [ -d "$skill_dir" ] || continue
    skill_name="$(basename "$skill_dir")"
    src="$skill_dir/SKILL.md"
    [ -f "$src" ] || continue

    dst_dir="$CLAUDE_SKILLS_DIR/$skill_name"
    dst="$dst_dir/SKILL.md"
    mkdir -p "$dst_dir"
    cp "$src" "$dst"
  done
  echo "Generated .claude skills from canonical .agents"
}

case "$MODE" in
  bootstrap-agents)
    bootstrap_from_claude
    ;;
  generate-claude)
    generate_claude_from_agents
    ;;
  full)
    bootstrap_from_claude
    generate_claude_from_agents
    ;;
  *)
    echo "Usage: sync-skills.sh [bootstrap-agents|generate-claude|full]"
    exit 1
    ;;
esac
