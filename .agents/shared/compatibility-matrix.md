# Compatibility Matrix

| Concern | Canonical location | Claude adapter | Cursor adapter | Other agent hosts adapter |
|---|---|---|---|---|
| Skills | `.agents/skills/` | Generated into `.claude/skills/` | Referenced via docs/rules | Direct usage from `.agents/skills/` |
| Agent roles | `.claude/agents/` | Direct usage | Referenced via `.cursor/rules/agent-routing.mdc` | Referenced via `.agents/shared/core-protocol.md` |
| Collaboration protocol | `.agents/shared/core-protocol.md` | Referenced from `CLAUDE.md` | Referenced from `.cursor` rules | Native in `.agents/shared` |
| Workflow guidance | `docs/WORKFLOW-GUIDE.md` | Direct usage | Referenced from `.cursor/README.md` | Referenced from `.agents/README.md` |
| Engine references | `docs/engine-reference/` | Direct usage | Direct usage | Direct usage |
| Adapter generation | `.agents/setup/` | Generates `.claude/skills/` | Generates `.cursor/rules/` | Not required (reads canonical directly) |

## Rule of thumb

Add new behavior once in canonical/shared docs first, then only small host-specific
adapters where syntax or platform behavior differs.
