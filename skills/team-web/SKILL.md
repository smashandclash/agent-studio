---
name: team-web
description: "Orchestrate web game implementation from architecture to browser QA using web-specialist, threejs-specialist, and typescript-webgame-specialist."
argument-hint: "[web feature description]"
user-invocable: true
allowed-tools: Read, Glob, Grep, Write, Edit, Bash, Task, AskUserQuestion, TodoWrite
---

When this skill is invoked, run a structured web-game delivery pipeline.

## Team Composition
- `web-specialist` — architecture lead and platform constraints
- `threejs-specialist` — rendering, scene graph, GPU performance
- `typescript-webgame-specialist` — loop/state/input/tooling architecture
- `qa-tester` — browser regression test checklist

## Pipeline
1. **Think**: Clarify feature scope, target browsers, and performance budget.
2. **Plan**: Ask `web-specialist` for architecture options and risks.
3. **Build**: Delegate in parallel to `threejs-specialist` and `typescript-webgame-specialist`.
4. **Review**: Validate architecture and cross-system integration.
5. **Test**: Run browser-focused QA checks and collect defects.
6. **Ship**: Prepare implementation summary and readiness checklist.
7. **Reflect**: Capture follow-up improvements and deferred issues.

## Decision Gates
- Use `AskUserQuestion` at phase transitions.
- Do not proceed to the next phase without explicit user approval.
- For multi-file changes, summarize touched files before writing.

## Outputs
- Architecture decision summary
- Implementation handoff summary
- Browser QA checklist and findings
- Next-step release recommendation
