# Cursor Compatibility Layer

This directory provides Cursor-friendly adapters while preserving the
host-neutral `.agents` standards layer and Claude compatibility.

## Goal

Use the same studio operating model in Cursor without duplicating canonical rules.

## Canonical + Adapters

- `.agents/skills/` is canonical for SKILL definitions.
- `.agents/shared/` is canonical for universal protocol and compatibility mapping.
- `.claude/agents/` is canonical for specialist role definitions.
- `.claude/skills/` and `.cursor/rules/` are generated adapters.
- Experience values are defined once in `.agents/shared/experience-values.md`.

## Suggested Cursor Workflow

1. Read `README.md` and `CLAUDE.md`.
2. Follow `.cursor/rules/` guardrails.
3. Use `.claude/docs/quick-start.md`, `.claude/docs/agent-roster.md`, and
   `.agents/shared/core-protocol.md` for
   deep role and workflow references.

## Pipeline and Safety Overlays

The following Cursor overlays map to canonical skills (via generated adapters):

- `sprint-pipeline.mdc` -> `/team-web`, `/qa-web`, `/ship-release`, `/retro-weekly`
- `investigation-first.mdc` -> `/investigate`
- `safety-toggles.mdc` -> `/careful`, `/freeze`, `/guard`, `/unfreeze`

## Web Game Additions

This repo includes web game agent tracks (Three.js + TypeScript) alongside
Godot, Unity, and Unreal tracks.
