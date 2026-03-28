$ErrorActionPreference = "Stop"

$Root = Resolve-Path (Join-Path $PSScriptRoot "..\..")

powershell -NoProfile -ExecutionPolicy Bypass -File (Join-Path $PSScriptRoot "sync-skills.ps1") generate-claude
powershell -NoProfile -ExecutionPolicy Bypass -File (Join-Path $PSScriptRoot "sync-skills.ps1") generate-toplevel
powershell -NoProfile -ExecutionPolicy Bypass -File (Join-Path $PSScriptRoot "generate-cursor-adapters.ps1")
powershell -NoProfile -ExecutionPolicy Bypass -File (Join-Path $PSScriptRoot "verify-skills-parity.ps1")

Write-Output "Generated all host adapters from canonical .agents"
