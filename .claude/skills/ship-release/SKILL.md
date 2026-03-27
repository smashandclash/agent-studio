---
name: ship-release
description: "Release execution workflow: verify readiness, run checks, prepare PR/release handoff, and report go/no-go status."
argument-hint: "[version or release scope]"
user-invocable: true
allowed-tools: Read, Glob, Grep, Write, Edit, Bash, Task, AskUserQuestion, TodoWrite
---

Use this skill when preparing a branch or milestone for shipping.

## Release Flow
1. Confirm release scope and target branch.
2. Verify code quality gates (lint, tests, static checks).
3. Review unresolved defects and risk profile.
4. Ensure docs/changelog readiness.
5. Produce go/no-go recommendation.
6. Prepare release handoff checklist.

## Go/No-Go Criteria
- Required checks pass
- No unresolved critical defects
- Rollback path documented
- Release notes/changelog prepared

## Output
- Release readiness report
- Go/No-Go recommendation with rationale
- Release handoff checklist
