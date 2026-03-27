# `.agents/skills` Host-Neutral Commands

This directory exposes commands for hosts that discover `SKILL.md` files under
`.agents/skills/`.

## Source of Truth

- Canonical command behavior lives in `.agents/skills/`.
- `.claude/skills/` is generated from this directory for Claude host compatibility.

## Keep In Sync

Use adapter generation scripts to keep host layers in sync:

- `.agents/setup/generate-all-adapters.sh`
- `.agents/setup/generate-all-adapters.ps1`
- `.agents/setup/verify-skills-parity.sh`
- `.agents/setup/verify-skills-parity.ps1`

skills.sh install format for repos:

`npx skills add <owner/repo>`
