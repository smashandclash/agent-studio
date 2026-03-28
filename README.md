# Agent Studio

Structured multi-agent game development workspace for modern studios.

This repository rebrands and extends the original Claude template into a
cross-host workflow setup:

- **Claude-compatible layer** in `.claude/`
- **Host-neutral compatibility layer** in `.agents/`
- **Cursor-compatible layer** in `.cursor/`
- Shared collaboration protocol, roles, and production workflows

---

## Original Project and Attribution

This project is based on the original upstream template
[Donchitos/Claude-Code-Game-Studios](https://github.com/Donchitos/Claude-Code-Game-Studios).
The actively maintained Agent Studio repo is
[`smashandclash/agent-studio`](https://github.com/smashandclash/agent-studio).

Inherited foundation:
- Agent hierarchy and domain-specialist model
- Skill-driven game-dev workflows
- Hook/rule-centered quality gates

Agent Studio adaptations in this fork:
- Rebrand to **Agent Studio**
- Cursor-first compatibility layer while preserving `.claude` support
- Expanded engine coverage with web game specialists (Three.js + TypeScript)

---

## What Is Included

| Area | What you get |
|------|---------------|
| Agent architecture | Leadership, department leads, and specialist agents |
| Workflow skills | Structured commands for ideation, design, implementation, QA, and release |
| Guardrails | Hook scripts and path-based rules for safer execution |
| Templates | Reusable docs for GDDs, ADRs, milestones, and reports |
| Engine tracks | Godot, Unity, Unreal, and Web (Three.js + TypeScript) |

---

## Engine and Platform Coverage

| Stack | Lead agent | Sub-specialists |
|------|------------|-----------------|
| Godot 4 | `godot-specialist` | GDScript, shaders, GDExtension |
| Unity | `unity-specialist` | DOTS/ECS, shaders/VFX, addressables, UI |
| Unreal Engine 5 | `unreal-specialist` | GAS, Blueprints, replication, UMG |
| Web game stack | `web-specialist` | Three.js, TypeScript web game architecture |

---

## Cross-Host Compatibility

### Cursor workflow
- Start from `.cursor/README.md`
- Use `.cursor/rules/` for Cursor-oriented guardrails
- Keep project behavior aligned with `.claude` architecture docs

### Claude workflow
- Start from `README.md`, `CLAUDE.md`, and `.claude/docs/quick-start.md`
- Use generated `.claude/skills/` adapters and `.claude/agents/` directly

### Universal layer
- Use `.agents/shared/` as the universal protocol source.
- Keep `.cursor` rules and `CLAUDE.md` aligned to this shared layer.
- Experience values live in `.agents/shared/experience-values.md`.
- Canonical commands live in `.agents/skills/`.
- Top-level install surface lives in `skills/` (generated from `.agents/skills/`).

### Shared principle
All layers follow the same collaboration model:
**ask -> options -> decision -> draft -> approval**.

---

## Quick Start

1. Clone this repo.
2. Open in Cursor (or Claude Code).
3. Review `CLAUDE.md`, `.agents/README.md`, and `.cursor/README.md`.
4. Configure your engine stack (`/setup-engine` in Claude-compatible flow).
5. Start planning with `/start` or `/brainstorm`.

---

## Key Paths

```text
CLAUDE.md
.claude/
  agents/
  skills/
  hooks/
  rules/
  docs/
.agents/
  shared/
  skills/
  setup/
skills/
.cursor/
  README.md
  rules/
docs/
  WORKFLOW-GUIDE.md
  engine-reference/
```

---

## Project Notes

- Organization: **Smash&Clash**
- Author: **HKTITAN**
- Product/site: [smashandclash.in](https://www.smashandclash.in/)
- This repo is the AI studio operating system maintained by Smash&Clash.
- You can prune agent sets you do not need and keep only the domains relevant to your game.

## Optional Skills.sh Extensions

This project can consume public SKILL.md extensions from `https://skills.sh/`.

- Curated list: `.agents/skills/skills.sh-curated.md`
- Installer pattern: `npx skills add <owner/repo>`

Use these as optional add-ons, while keeping game-studio workflow canonical in
`.agents/skills/`.

For non-Claude hosts, canonical skills live under `.agents/skills/`. Keep
host adapters generated from canonical definitions with:

- `.agents/setup/sync-skills.sh`
- `.agents/setup/sync-skills.ps1`
- `.agents/setup/generate-all-adapters.sh`
- `.agents/setup/generate-all-adapters.ps1`

Top-level `skills/` is also generated from `.agents/skills/` as the repo install
surface for SKILL.md ecosystem tooling.

## Design Value Sources

We incorporate practical insights from:

- [guidelines.sh](https://guidelines.sh/)
- [Family Values by Benji Taylor](https://benji.org/family-values)

These are codified in `.agents/shared/experience-values.md` and reflected in UI rules.

---

## Upgrading

See `UPGRADING.md` for template upgrade strategy and merge guidance.

## License

MIT License. See `LICENSE`.
