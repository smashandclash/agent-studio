---
name: qa-web
description: "Browser-focused QA workflow for web game features with reproducible bug reports and regression checks."
argument-hint: "[url or feature under test]"
user-invocable: true
allowed-tools: Read, Glob, Grep, Write, Edit, Bash, Task, AskUserQuestion, TodoWrite
---

Use this skill for testing web game flows in realistic browser conditions.

## QA Flow
1. Define test scope and acceptance criteria.
2. Create a focused test matrix:
   - Core path
   - Edge path
   - Failure/recovery path
   - Performance sanity checks
3. Execute checks and capture evidence.
4. Record defects with reproducible steps.
5. Validate candidate fixes.
6. Produce regression checklist for future runs.

## Quality Standards
- Every defect must include expected vs actual behavior.
- Prefer deterministic reproduction over one-off observations.
- Include browser/environment details in reports.

## Output
- QA summary (pass/fail by scenario)
- Defect list with severity
- Regression checklist to re-run before release
