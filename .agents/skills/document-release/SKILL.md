---
name: document-release
description: "Update and align project documentation with shipped changes so docs do not drift from implementation."
argument-hint: "[release scope or commit range]"
user-invocable: true
allowed-tools: Read, Glob, Grep, Write, Edit, Bash, Task, AskUserQuestion
---

Use this skill after implementation stabilizes and before or during release.

## Documentation Sync Flow
1. Gather implementation delta (features, fixes, behavior changes).
2. Identify impacted docs (`README`, workflow docs, release notes, references).
3. Update docs to reflect current behavior.
4. Cross-check commands, naming, and links.
5. Produce summary of updated documentation.

## Standards
- Prefer concise, user-facing phrasing.
- Keep command names and file references exact.
- Do not invent features not present in the codebase.

## Output
- Documentation change summary
- Remaining known documentation gaps (if any)
