---
name: careful
description: "Activate high-caution execution mode: require explicit confirmation before risky operations."
argument-hint: "[optional: scope note]"
user-invocable: true
allowed-tools: Read, Write, Edit, AskUserQuestion
---

This skill enables a high-caution mode for the current working session.

## Semantics
- Warn before destructive or irreversible operations.
- Require explicit user confirmation for:
  - branch history rewrites
  - force push
  - destructive deletes
  - broad refactors touching many files

## State
Write `production/session-state/safety-mode.md` with:
- `mode: careful`
- `scope: [optional scope note]`

## Output
Return a short confirmation that careful mode is active and what actions now
require explicit approval.
