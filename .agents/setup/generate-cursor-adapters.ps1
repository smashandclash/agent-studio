$ErrorActionPreference = "Stop"

$Root = Resolve-Path (Join-Path $PSScriptRoot "..\..")
$CursorRules = Join-Path $Root ".cursor\rules"
New-Item -ItemType Directory -Force -Path $CursorRules | Out-Null

$rules = @{
    "studio-collaboration.mdc" = @'
---
description: Agent Studio collaboration protocol for Cursor sessions
alwaysApply: true
---

# Agent Studio Collaboration Protocol

Use the universal collaboration contract from:

- `.agents/shared/core-protocol.md`
- `.agents/shared/experience-values.md`
'@
    "agent-routing.mdc" = @'
---
description: Route tasks to the correct game studio specialist roles
alwaysApply: true
---

# Agent Routing Guidance

Follow routing from:

- `.agents/shared/core-protocol.md`
- `.claude/docs/agent-roster.md`
'@
    "web-game-track.mdc" = @'
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
'@
    "sprint-pipeline.mdc" = @'
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
'@
    "investigation-first.mdc" = @'
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
'@
    "safety-toggles.mdc" = @'
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
'@
}

foreach ($file in $rules.Keys) {
    Set-Content -Path (Join-Path $CursorRules $file) -Value $rules[$file] -NoNewline
}

Write-Output "Generated Cursor rule adapters in $CursorRules"
