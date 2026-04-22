$ErrorActionPreference = 'Stop'

$VaultRoot = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path
Set-Location $VaultRoot

Write-Host '=== Betty Brain Windows setup ==='
Write-Host "Vault: $VaultRoot"
Write-Host ''

Write-Host '1. Checking required tools...'
$tools = @('git')
foreach ($tool in $tools) {
  if (Get-Command $tool -ErrorAction SilentlyContinue) {
    Write-Host "  [ok] $tool"
  } else {
    Write-Host "  [missing] $tool not found"
  }
}

$obsidianExe = 'C:\Users\calli\AppData\Local\Programs\Obsidian\Obsidian.exe'
if (Test-Path $obsidianExe) {
  Write-Host '  [ok] Obsidian'
} else {
  Write-Host '  [warn] Obsidian not found in the expected path'
}

Write-Host ''
Write-Host '2. Verifying bundled Obsidian plugins...'
$plugins = @('internetvin-terminal','agentfiles','obsidian-excalidraw-plugin')
foreach ($plugin in $plugins) {
  $pluginDir = Join-Path $VaultRoot ".obsidian\plugins\$plugin"
  if ((Test-Path (Join-Path $pluginDir 'main.js')) -and (Test-Path (Join-Path $pluginDir 'manifest.json'))) {
    Write-Host "  [ok] $plugin"
  } else {
    Write-Host "  [warn] $plugin missing files"
  }
}

Write-Host ''
Write-Host '3. Setting up Vault/.env...'
$envExample = Join-Path $VaultRoot 'Vault\.env.example'
$envPath = Join-Path $VaultRoot 'Vault\.env'
if ((-not (Test-Path $envPath)) -and (Test-Path $envExample)) {
  Copy-Item $envExample $envPath
  Write-Host '  [ok] Copied Vault/.env.example to Vault/.env'
} elseif (Test-Path $envPath) {
  Write-Host '  [ok] Vault/.env already exists'
} else {
  Write-Host '  [warn] Vault/.env.example missing'
}

Write-Host ''
Write-Host '4. Opening vault in Obsidian...'
if (Test-Path $obsidianExe) {
  Start-Process $obsidianExe $VaultRoot
  Write-Host '  [ok] Obsidian launched'
} else {
  Write-Host '  [warn] Could not launch Obsidian automatically'
}

Write-Host ''
Write-Host 'Next steps:'
Write-Host '  1. In Obsidian, trust the vault and enable community plugins'
Write-Host '  2. Open BRAIN MAP.md'
Write-Host '  3. Use the left ribbon Graph view to inspect the vault graph'
Write-Host '  4. In Claude Code, use the brain-* commands in .claude/commands/'
