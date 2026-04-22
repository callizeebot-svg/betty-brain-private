$ErrorActionPreference = 'Stop'

$VaultRoot = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path
Set-Location $VaultRoot

$plugins = @(
  @{ Id = 'internetvin-terminal'; Repo = 'internetvin/internetvin-terminal'; Tag = '1.1.2' },
  @{ Id = 'agentfiles'; Repo = 'railly/agentfiles'; Tag = '0.7.2' },
  @{ Id = 'obsidian-excalidraw-plugin'; Repo = 'zsviczian/obsidian-excalidraw-plugin'; Tag = '2.22.0' }
)

Write-Host '=== Installing Obsidian plugins ==='
foreach ($plugin in $plugins) {
  $dest = Join-Path $VaultRoot ".obsidian\plugins\$($plugin.Id)"
  New-Item -ItemType Directory -Force -Path $dest | Out-Null
  foreach ($asset in @('main.js','manifest.json','styles.css')) {
    $url = "https://github.com/$($plugin.Repo)/releases/download/$($plugin.Tag)/$asset"
    try {
      Invoke-WebRequest -Uri $url -OutFile (Join-Path $dest $asset) -UseBasicParsing | Out-Null
      Write-Host "  [ok] $($plugin.Id) $asset"
    } catch {
      if ($asset -eq 'styles.css') {
        Write-Host "  [warn] $($plugin.Id) styles.css missing (acceptable for some plugins)"
      } else {
        throw
      }
    }
  }
}
