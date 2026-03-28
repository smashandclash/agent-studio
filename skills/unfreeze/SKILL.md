---
name: unfreeze
description: "Clear freeze/guard edit-boundary restrictions and return to normal safety behavior."
argument-hint: "[no arguments]"
user-invocable: true
allowed-tools: Read, Write, Edit
---

Use this skill to remove active path boundary restrictions.

## Semantics
- If `mode` is `freeze` or `guard`, clear boundary restrictions.
- If no active freeze/guard state exists, report no-op.
- Keep normal collaboration and approval rules in effect.

## State
Update `production/session-state/safety-mode.md`:
- Set `mode: normal`
- Remove `allowed_path` if present

## Output
Confirm current safety mode and whether boundary restrictions were removed.
