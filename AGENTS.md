# Agent Studio Multi-Agent Compatibility

This repository is designed to work across agent hosts that support `SKILL.md`.
Canonical repository: `https://github.com/smashandclash/agent-studio`

Maintainer attribution:
- Author: **HKTITAN**
- Organization: **Smash&Clash**

## Canonical Layout

- Canonical skill implementations: `.agents/skills/`
- Host-neutral shared standards: `.agents/shared/`
- Generated Claude adapters: `.claude/skills/`
- Top-level install surface (generated): `skills/`
- Cursor host adapters: `.cursor/rules/`

## Compatibility Policy

- Write behavior once in canonical/shared sources.
- Keep host-specific layers minimal and reference canonical sources.
- Generate host adapters from `.agents/skills/` and avoid duplicated logic.

## skills.sh Alignment

This repo follows the `SKILL.md` ecosystem conventions and can consume optional
extensions from `https://skills.sh/`.

Install format:

`npx skills add <owner/repo>`

See:
- `.agents/skills/README.md`
- `.agents/skills/skills.sh-curated.md`
- `.agents/setup/` scripts to generate `.claude` and `.cursor` adapters.
