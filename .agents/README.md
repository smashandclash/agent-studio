# Agent Host Compatibility Layer

This directory is the host-neutral layer for cross compatibility across all
SKILL.md-compatible agent hosts, including:

- `.claude` (Claude Code)
- `.cursor` (Cursor rules and overlays)
- `.agents` (host-neutral runtime layer)
- Codex/Gemini/Windsurf-style hosts that scan `.agents/skills/`

Canonical repository: `https://github.com/smashandclash/agent-studio`

Maintainer attribution:
- Author: **HKTITAN**
- Organization: **Smash&Clash**

## Consolidation Strategy

- Keep **one canonical source** where possible.
- Use **shared standards** in `.agents/shared/`.
- Keep host-specific folders as **thin adapters**, not duplicate rule books.

## Canonical Sources and Exposure

- Canonical skills: `.agents/skills/`
- Canonical agent definitions: `.claude/agents/`
- Canonical host-neutral standards: `.agents/shared/`
- Generated Claude adapters: `.claude/skills/`

## Skills.sh Integration

Optional public skills can be discovered and installed from `https://skills.sh/`.
One-command install format:

`npx skills add <owner/repo>`

See:
- `.agents/skills/skills.sh-curated.md`
- `.agents/skills/README.md`
- `.agents/setup/sync-skills.sh` / `.agents/setup/sync-skills.ps1`
- `.agents/setup/generate-all-adapters.sh` / `.agents/setup/generate-all-adapters.ps1`
