#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
CURSOR_RULES_DIR="$ROOT_DIR/.cursor/rules"
mkdir -p "$CURSOR_RULES_DIR"

cat > "$CURSOR_RULES_DIR/studio-collaboration.mdc" <<'EOF'
---
description: Agent Studio collaboration protocol for Cursor sessions
alwaysApply: true
---

# Agent Studio Collaboration Protocol

Use the universal collaboration contract from:

- `.agents/shared/core-protocol.md`
- `.agents/shared/experience-values.md`
EOF

cat > "$CURSOR_RULES_DIR/agent-routing.mdc" <<'EOF'
---
description: Route tasks to the correct game studio specialist roles
alwaysApply: true
---

# Agent Routing Guidance

Follow routing from:

- `.agents/shared/core-protocol.md`
- `.claude/docs/agent-roster.md`
EOF

cat > "$CURSOR_RULES_DIR/web-game-track.mdc" <<'EOF'
---
description: Web game development track for Three.js and TypeScript projects
alwaysApply: true
---

# Web Game Track

Use universal web guidance from:

- `.agents/shared/core-protocol.md`
- `.claude/agents/web-specialist.md`
- `.claude/agents/threejs-specialist.md`
- `.claude/agents/typescript-webgame-specialist.md`
EOF

cat > "$CURSOR_RULES_DIR/sprint-pipeline.mdc" <<'EOF'
---
description: Enforce sprint execution pipeline for web/game delivery
alwaysApply: true
---

# Sprint Pipeline

Follow:

`Think -> Plan -> Build -> Review -> Test -> Ship -> Reflect`

Preferred command mapping:

- Think: `/investigate`
- Build: `/team-web`
- Test: `/qa-web`
- Ship: `/ship-release`
- Reflect: `/retro-weekly`
EOF

cat > "$CURSOR_RULES_DIR/investigation-first.mdc" <<'EOF'
---
description: Require investigation-first debugging before applying fixes
alwaysApply: true
---

# Investigation First

Before proposing or applying a bug fix:

1. Reproduce deterministically.
2. Collect evidence.
3. Validate root cause.
4. Then propose fixes.
EOF

cat > "$CURSOR_RULES_DIR/safety-toggles.mdc" <<'EOF'
---
description: Apply safety toggle semantics for risky sessions
alwaysApply: true
---

# Safety Toggles

Use safety commands from canonical skills:

- `/careful`
- `/freeze [path]`
- `/guard [path]`
- `/unfreeze`
EOF

echo "Generated Cursor rule adapters in $CURSOR_RULES_DIR"
