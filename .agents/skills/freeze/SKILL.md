---
name: freeze
description: "Restrict edits to an approved path boundary until explicitly unfrozen."
argument-hint: "[required: allowed path prefix]"
user-invocable: true
allowed-tools: Read, Write, Edit, AskUserQuestion
---

This skill locks edit operations to a specific path boundary.

## Semantics
- Only edit files under the approved path prefix.
- Any request outside the boundary must be escalated for approval.
- Intended for focused debugging and safe hotfixes.

## State
Write `production/session-state/safety-mode.md` with:
- `mode: freeze`
- `allowed_path: [path prefix]`

## Output
Confirm the active boundary and remind that `/unfreeze` is required to remove it.
