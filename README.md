# Agent Studio

Structured multi-agent game development workspace for modern studios.

Agent Studio rebrands and extends the original Claude template into a cross-host workflow system that works across Claude Code, Cursor, and other SKILL.md-compatible hosts.

- **Claude-compatible layer** in `.claude/`
- **Host-neutral compatibility layer** in `.agents/`
- **Cursor-compatible layer** in `.cursor/`
- Shared collaboration protocol, role hierarchy, and production workflows

---

## Table of Contents

- [What Agent Studio Is](#what-agent-studio-is)
- [Who This Is For](#who-this-is-for)
- [What Is Included](#what-is-included)
- [Engine and Platform Coverage](#engine-and-platform-coverage)
- [Cross-Host Compatibility Model](#cross-host-compatibility-model)
- [Quick Start](#quick-start)
  - [Quick Start (Cursor)](#quick-start-cursor)
  - [Quick Start (Claude Code)](#quick-start-claude-code)
- [Cursor Usage Guide](#cursor-usage-guide)
  - [How Cursor Rules Map to Studio Workflows](#how-cursor-rules-map-to-studio-workflows)
  - [Recommended Cursor Session Pattern](#recommended-cursor-session-pattern)
- [Example Use Cases](#example-use-cases)
- [Workflow by Project Stage](#workflow-by-project-stage)
- [Key Commands You Will Use Most](#key-commands-you-will-use-most)
- [Repository Layout](#repository-layout)
- [Canonical vs Generated Skills](#canonical-vs-generated-skills)
- [Optional Skills.sh Extensions](#optional-skillssh-extensions)
- [Customization Guidance](#customization-guidance)
- [Documentation References](#documentation-references)
- [Project Notes](#project-notes)
- [Design Value Sources](#design-value-sources)
- [Upgrading](#upgrading)
- [FAQ / Troubleshooting](#faq--troubleshooting)
- [Original Project and Attribution](#original-project-and-attribution)
- [License](#license)

---

## What Agent Studio Is

Agent Studio is an AI-assisted operating system for game development teams.
It combines:

- role-specialized agents,
- skill-based workflows,
- collaboration guardrails,
- and reusable production templates.

The goal is consistency: your ideation, design, implementation, QA, and release process follows one shared structure regardless of host.

---

## Who This Is For

Agent Studio is designed for:

- solo developers who want studio-grade process,
- small teams that need clear role boundaries,
- game studios adopting AI with guardrails,
- teams shipping on Godot, Unity, Unreal, or web game stacks.

If you want the assistant to behave like a coordinated team (not a single generalist), this repo is for you.

---

## What Is Included

| Area | What you get |
|------|---------------|
| Agent architecture | Leadership, department leads, and specialist agents |
| Workflow skills | Structured commands for ideation, design, implementation, QA, and release |
| Guardrails | Hook scripts and path-based rules for safer execution |
| Templates | Reusable docs for GDDs, ADRs, milestones, and reports |
| Engine tracks | Godot, Unity, Unreal, and Web (Three.js + TypeScript) |
| Compatibility layer | Shared standards in `.agents/shared/` with host-specific adapters |

---

## Engine and Platform Coverage

| Stack | Lead agent | Sub-specialists |
|------|------------|-----------------|
| Godot 4 | `godot-specialist` | GDScript, shaders, GDExtension |
| Unity | `unity-specialist` | DOTS/ECS, shaders/VFX, addressables, UI |
| Unreal Engine 5 | `unreal-specialist` | GAS, Blueprints, replication, UMG |
| Web game stack | `web-specialist` | Three.js, TypeScript web game architecture |

---

## Cross-Host Compatibility Model

### Claude workflow

- Start from `README.md`, `CLAUDE.md`, and `.claude/docs/quick-start.md`.
- Use generated `.claude/skills/` adapters and `.claude/agents/`.

### Cursor workflow

- Start from `.cursor/README.md`.
- Use `.cursor/rules/` for Cursor-oriented overlays.
- Keep behavior aligned with canonical standards in `.agents/shared/`.

### Universal layer

- Canonical commands: `.agents/skills/`
- Universal protocol and standards: `.agents/shared/`
- Generated Claude adapters: `.claude/skills/`
- Generated top-level install surface: `skills/`

### Shared principle

All layers follow the same collaboration model:

**ask -> options -> decision -> draft -> approval**

---

## Quick Start

### Quick Start (Cursor)

1. Clone this repo and open it in Cursor.
2. Read these first:
   - `README.md`
   - `.cursor/README.md`
   - `CLAUDE.md`
3. Review active overlays in `.cursor/rules/`.
4. Choose and configure your engine path (use `/setup-engine` flow in compatible host sessions).
5. Start from `/start` if this is your first session.
6. Move into design with `/brainstorm` or `/map-systems`.
7. Run delivery workflows (`/sprint-plan`, `/team-*`, `/qa-web`, `/ship-release`) as you progress.

### Quick Start (Claude Code)

1. Clone this repo.
2. Open in Claude Code.
3. Read:
   - `README.md`
   - `CLAUDE.md`
   - `.claude/docs/quick-start.md`
4. Configure engine/version with `/setup-engine`.
5. Start with `/start`.
6. Use stage-driven skills from `docs/WORKFLOW-GUIDE.md`.

---

## Cursor Usage Guide

This section is intentionally detailed to make Cursor onboarding straightforward.

### 1) Understand where behavior comes from

- `.cursor/rules/` = Cursor-specific overlays and routing behavior.
- `.agents/shared/` = host-neutral protocol and values.
- `.agents/skills/` = canonical skill definitions used across hosts.

If something appears inconsistent, treat `.agents/shared/` and `.agents/skills/` as source-of-truth and regenerate adapters.

### 2) Use rule overlays as workflow switches

You have dedicated overlays in `.cursor/rules/`:

- `agent-routing.mdc`
- `studio-collaboration.mdc`
- `investigation-first.mdc`
- `safety-toggles.mdc`
- `sprint-pipeline.mdc`
- `web-game-track.mdc`

These are designed to keep Cursor behavior aligned with the same production model documented in `CLAUDE.md` and `.agents/shared/`.

### 3) Follow this operating loop in Cursor

1. **Frame goal and constraints** (what feature, by when, quality bar).
2. **Choose workflow command** (`/investigate`, `/design-system`, `/team-web`, etc.).
3. **Request options and tradeoffs** before implementation.
4. **Approve a draft direction**.
5. **Execute with guardrails** (`/careful`, `/freeze`, `/guard` when needed).
6. **Run quality passes** (`/code-review`, `/perf-profile`, `/qa-web`, `/gate-check`).
7. **Prepare release artifacts** (`/release-checklist`, `/patch-notes`, `/team-release`).

### 4) When to use safety toggles

Use these for high-risk periods such as large refactors, release week, or hotfixes:

- `/careful` — extra caution before risky operations
- `/freeze` — restrict edits to approved boundaries
- `/guard` — combined careful + freeze semantics
- `/unfreeze` — return to normal behavior

### 5) Where to find realistic session patterns

See:

- `docs/examples/README.md`
- `docs/examples/session-design-crafting-system.md`
- `docs/examples/session-implement-combat-damage.md`
- `docs/examples/session-scope-crisis-decision.md`

These examples show the expected collaborative behavior (questions, options, approval gates).

---

## How Cursor Rules Map to Studio Workflows

- `sprint-pipeline.mdc` aligns with: `/team-web`, `/qa-web`, `/ship-release`, `/retro-weekly`
- `investigation-first.mdc` aligns with: `/investigate`
- `safety-toggles.mdc` aligns with: `/careful`, `/freeze`, `/guard`, `/unfreeze`

This mapping helps you quickly switch process modes without changing core architecture.

---

## Recommended Cursor Session Pattern

Use this script-like pattern in daily work:

1. "I need to implement X under constraints Y and Z."
2. Ask for 2–3 options with tradeoffs.
3. Choose one option explicitly.
4. Ask for a phased execution plan.
5. Implement phase-by-phase with review points.
6. Run verification for that phase.
7. Continue until done, then run release checks.

This keeps creative control with you while using the system as a disciplined execution layer.

---

## Example Use Cases

### 1) I’m starting from zero

- Run `/start`
- Run `/brainstorm`
- Run `/map-systems`
- Run `/design-system <system-name>` for critical systems
- Run `/prototype <core mechanic>`
- Run `/sprint-plan new`

### 2) I have a design doc and need implementation

- Run `/investigate` to validate assumptions and constraints
- Run `/team-web` (web stack) or domain team skill for implementation
- Run `/code-review`
- Run `/qa-web` (if browser-facing) or QA workflow skills
- Run `/ship-release`

### 3) My sprint is slipping

- Run `/scope-check production/sprints/<sprint-file>.md`
- Run `/sprint-plan status`
- Run `/milestone-review "<milestone>"`
- Run `/retrospective` or `/retro-weekly`

### 4) I need release readiness confidence

- Run `/release-checklist <version-tag>`
- Run `/launch-checklist`
- Run `/patch-notes <version-tag>`
- Run `/changelog <version-tag>`
- Run `/team-release`

### 5) Production incident / emergency fix

- Run `/hotfix "<incident summary>"`
- Run `/investigate`
- Apply fix with safety toggles enabled (`/guard`)
- Re-run release validation (`/ship-release`, `/launch-checklist`)

---

## Workflow by Project Stage

Use `docs/WORKFLOW-GUIDE.md` as the authoritative phase guide:

- **Phase 0:** Setup & Configuration
- **Phase 1:** Ideation & Concept
- **Phase 2:** Pre-Production & Design
- **Phase 3:** Prototyping & Validation
- **Phase 4:** Production Sprint Workflow
- **Phase 5:** Implementation Deep-Dive
- **Phase 6:** Testing & QA
- **Phase 7:** Polish & Optimization
- **Phase 8:** Localization & Accessibility
- **Phase 9:** Release & Launch
- **Phase 10:** Post-Launch & Live Ops

If uncertain where to start, run `/start` or `/project-stage-detect`.

---

## Key Commands You Will Use Most

| Goal | Command |
|------|---------|
| Onboard and route workflow | `/start` |
| Configure engine/version references | `/setup-engine` |
| Create game concepts | `/brainstorm` |
| Decompose systems | `/map-systems` |
| Author a system GDD | `/design-system` |
| Run focused implementation teams | `/team-combat`, `/team-ui`, `/team-web`, etc. |
| Investigate before fixing | `/investigate` |
| Plan and track sprint | `/sprint-plan`, `/scope-check` |
| Review technical direction | `/architecture-decision`, `/code-review` |
| Verify gameplay quality | `/balance-check`, `/playtest-report`, `/perf-profile` |
| Prepare release artifacts | `/release-checklist`, `/launch-checklist`, `/patch-notes`, `/changelog` |
| Stabilize risk | `/careful`, `/freeze`, `/guard`, `/unfreeze` |

For a full command walkthrough, use `docs/WORKFLOW-GUIDE.md` and `.claude/docs/quick-start.md`.

---

## Repository Layout

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
.cursor/
  README.md
  rules/
skills/
docs/
  WORKFLOW-GUIDE.md
  examples/
  engine-reference/
```

---

## Canonical vs Generated Skills

Skill sources and adapters follow this model:

- **Canonical skill definitions:** `.agents/skills/`
- **Generated Claude adapters:** `.claude/skills/`
- **Generated top-level install surface:** `skills/`

Generation scripts:

- `.agents/setup/sync-skills.sh`
- `.agents/setup/sync-skills.ps1`
- `.agents/setup/generate-all-adapters.sh`
- `.agents/setup/generate-all-adapters.ps1`

Common commands:

```bash
# Linux/macOS
bash .agents/setup/sync-skills.sh generate-claude
bash .agents/setup/sync-skills.sh generate-toplevel
bash .agents/setup/generate-all-adapters.sh
```

```powershell
# Windows PowerShell
pwsh .agents/setup/sync-skills.ps1 generate-claude
pwsh .agents/setup/sync-skills.ps1 generate-toplevel
pwsh .agents/setup/generate-all-adapters.ps1
```

---

## Optional Skills.sh Extensions

This project can consume public SKILL.md extensions from `https://skills.sh/`.

- Curated list: `.agents/skills/skills.sh-curated.md`
- Installer pattern: `npx skills add <owner/repo>`

Use these as optional add-ons while keeping game-studio workflow canonical in `.agents/skills/`.

---

## Customization Guidance

You can tailor Agent Studio safely by:

- keeping only the agent domains you use,
- keeping canonical skill definitions in `.agents/skills/`,
- regenerating adapters after skill edits,
- preserving shared protocol files in `.agents/shared/`.

Recommended customization sequence:

1. Pick your engine track.
2. Prune unused domains conservatively.
3. Update technical preferences (`.claude/docs/technical-preferences.md`).
4. Validate command/rule consistency.
5. Regenerate adapters.

---

## Documentation References

- Main workflow phases: `docs/WORKFLOW-GUIDE.md`
- Collaboration principle: `docs/COLLABORATIVE-DESIGN-PRINCIPLE.md`
- Cursor compatibility notes: `.cursor/README.md`
- Host-neutral compatibility layer: `.agents/README.md`
- Claude quick start: `.claude/docs/quick-start.md`
- Engine references: `docs/engine-reference/README.md`
- Example sessions: `docs/examples/README.md`

---

## Project Notes

- Organization: **Smash&Clash**
- Author: **HKTITAN**
- Product/site: [smashandclash.in](https://www.smashandclash.in/)
- This repo is the AI studio operating system maintained by Smash&Clash.

---

## Design Value Sources

We incorporate practical insights from:

- [guidelines.sh](https://guidelines.sh/)
- [Family Values by Benji Taylor](https://benji.org/family-values)

These are codified in `.agents/shared/experience-values.md` and reflected in UI rules.

---

## Upgrading

See `UPGRADING.md` for template upgrade strategy and merge guidance.

---

## FAQ / Troubleshooting

### Which docs should I read first?

For most users:

1. `README.md`
2. `.cursor/README.md` (if using Cursor) or `.claude/docs/quick-start.md` (if using Claude)
3. `CLAUDE.md`
4. `docs/WORKFLOW-GUIDE.md`

### I changed a canonical skill but behavior looks stale.

Regenerate adapters:

- `.agents/setup/sync-skills.sh full` (or PowerShell equivalent)
- `.agents/setup/generate-all-adapters.sh`

### Where should I add new skills?

Add/modify skills in `.agents/skills/`, then regenerate adapters.
Do not treat generated adapter folders as canonical sources.

### How do I keep sessions disciplined in Cursor?

Use the collaborative loop:

- define constraints,
- request options,
- choose explicitly,
- approve drafts,
- execute in phases,
- verify before release.

Use safety toggles (`/careful`, `/freeze`, `/guard`) during risky operations.

### What if I already have a project in progress?

Run `/project-stage-detect` or `/start`, then follow phase-appropriate workflows from `docs/WORKFLOW-GUIDE.md`.

---

## Original Project and Attribution

This project is based on the original upstream template:
[Donchitos/Claude-Code-Game-Studios](https://github.com/Donchitos/Claude-Code-Game-Studios).

The actively maintained Agent Studio repository is:
[`smashandclash/agent-studio`](https://github.com/smashandclash/agent-studio).

Inherited foundation includes:

- agent hierarchy and domain-specialist model,
- skill-driven game-dev workflows,
- hook/rule-centered quality gates.

Agent Studio adaptations include:

- rebrand to **Agent Studio**,
- Cursor-first compatibility layer while preserving `.claude` support,
- expanded engine coverage with web game specialists (Three.js + TypeScript).

---

## License

MIT License. See `LICENSE`.
