---
name: guard
description: "Enable maximum safety mode by combining careful and freeze semantics."
argument-hint: "[required: allowed path prefix]"
user-invocable: true
allowed-tools: Read, Write, Edit, AskUserQuestion
---

This skill enables both caution and boundary restriction.

## Semantics
- Apply all `careful` protections.
- Apply all `freeze` protections with an explicit allowed path prefix.
- Use this for production hotfixes and high-risk operations.

## State
Write `production/session-state/safety-mode.md` with:
- `mode: guard`
- `allowed_path: [path prefix]`

## Output
Confirm guard mode is active and list constrained behavior.
