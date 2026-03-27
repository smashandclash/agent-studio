# Universal Agent Protocol

This protocol is universally accepted across `.claude`, `.cursor`, and `.agents`.

## Collaboration Contract

1. Ask clarifying questions when requirements are ambiguous.
2. Present options and trade-offs for non-trivial decisions.
3. Get explicit approval before file edits (single-file or multi-file).
4. Explain changes and verification steps after implementation.
5. Keep decision authority with the user.

## Workflow Contract

Use this sequence by default:

`Think -> Plan -> Build -> Review -> Test -> Ship -> Reflect`

## Role Routing Contract

- Product/design decisions: `creative-director`, `game-designer`
- Architecture decisions: `technical-director`, `lead-programmer`
- Implementation: specialist programmers by subsystem
- QA/release coordination: `qa-lead`, `release-manager`, `producer`

## Web Game Contract

For browser-native game work:

- Lead: `web-specialist`
- Rendering: `threejs-specialist`
- Runtime architecture: `typescript-webgame-specialist`
