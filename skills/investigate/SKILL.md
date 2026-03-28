---
name: investigate
description: "Systematic root-cause debugging workflow. Investigation before fixes, evidence over guesses."
argument-hint: "[bug or failing behavior]"
user-invocable: true
allowed-tools: Read, Glob, Grep, Bash, Task, AskUserQuestion, TodoWrite
---

Use this skill for any bug, test failure, or unexpected behavior.

## Core Rule
**No fixes before root cause evidence.**

## Investigation Flow
1. Define expected behavior and observed behavior.
2. Reproduce with minimal, deterministic steps.
3. Gather evidence (logs, stack traces, recent changes, failing tests).
4. Form ranked hypotheses.
5. Validate one hypothesis at a time.
6. Confirm root cause with a reproducible proof.
7. Propose fix options with risk and verification plan.

## Guardrails
- Stop and report if three consecutive hypotheses fail.
- Avoid broad speculative refactors during investigation.
- Keep a short investigation log in the response for traceability.

## Required Output
- Reproduction steps
- Evidence summary
- Confirmed root cause
- Fix recommendation (or blockers if unresolved)
