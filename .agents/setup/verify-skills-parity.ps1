$ErrorActionPreference = "Stop"

$Root = Resolve-Path (Join-Path $PSScriptRoot "..\..")
$AgentSkills = Join-Path $Root ".agents\skills"
$ClaudeSkills = Join-Path $Root ".claude\skills"

$agentNames = Get-ChildItem -Path $AgentSkills -Directory | Select-Object -ExpandProperty Name | Sort-Object
$claudeNames = Get-ChildItem -Path $ClaudeSkills -Directory | Select-Object -ExpandProperty Name | Sort-Object

if ((Compare-Object -ReferenceObject $agentNames -DifferenceObject $claudeNames).Count -gt 0) {
    throw "Skill directory mismatch between .agents and .claude"
}

foreach ($name in $agentNames) {
    $src = Join-Path (Join-Path $AgentSkills $name) "SKILL.md"
    $dst = Join-Path (Join-Path $ClaudeSkills $name) "SKILL.md"
    if (-not (Test-Path $src)) { throw "Missing canonical SKILL.md for $name" }
    if (-not (Test-Path $dst)) { throw "Missing generated SKILL.md for $name" }

    $content = Get-Content -Path $src -Raw
    foreach ($key in @("name:", "description:", "user-invocable:")) {
        if ($content -notmatch [regex]::Escape($key)) {
            throw "Canonical skill $name missing frontmatter key: $key"
        }
    }
}

Write-Output "Skill parity verified: .agents <-> .claude"
