$ErrorActionPreference = "Stop"

$Root = Resolve-Path (Join-Path $PSScriptRoot "..\..")
$AgentSkills = Join-Path $Root ".agents\skills"
$ClaudeSkills = Join-Path $Root ".claude\skills"
$Mode = if ($args.Count -gt 0) { $args[0] } else { "generate-claude" }

New-Item -ItemType Directory -Force -Path $AgentSkills | Out-Null
New-Item -ItemType Directory -Force -Path $ClaudeSkills | Out-Null

function Bootstrap-Agents {
    Get-ChildItem -Path $ClaudeSkills -Directory | ForEach-Object {
        $SkillName = $_.Name
        $Src = Join-Path $_.FullName "SKILL.md"
        if (-not (Test-Path $Src)) { return }

        $DstDir = Join-Path $AgentSkills $SkillName
        $Dst = Join-Path $DstDir "SKILL.md"
        New-Item -ItemType Directory -Force -Path $DstDir | Out-Null
        Copy-Item -Path $Src -Destination $Dst -Force
    }
    Write-Output "Bootstrapped canonical skills from .claude -> .agents"
}

function Generate-Claude {
    Get-ChildItem -Path $AgentSkills -Directory | ForEach-Object {
        $SkillName = $_.Name
        $Src = Join-Path $_.FullName "SKILL.md"
        if (-not (Test-Path $Src)) { return }

        $DstDir = Join-Path $ClaudeSkills $SkillName
        $Dst = Join-Path $DstDir "SKILL.md"
        New-Item -ItemType Directory -Force -Path $DstDir | Out-Null
        Copy-Item -Path $Src -Destination $Dst -Force
    }
    Write-Output "Generated .claude skills from canonical .agents"
}

switch ($Mode) {
    "bootstrap-agents" { Bootstrap-Agents }
    "generate-claude" { Generate-Claude }
    "full" {
        Bootstrap-Agents
        Generate-Claude
    }
    default {
        throw "Usage: sync-skills.ps1 [bootstrap-agents|generate-claude|full]"
    }
}
