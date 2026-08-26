# Ronnier Skill — installer for Windows
# 用法 / Usage:
#   irm https://raw.githubusercontent.com/Ayueh0102/Ronnier-skill/main/install.ps1 | iex

$ErrorActionPreference = 'Stop'

$Repo = 'https://github.com/Ayueh0102/Ronnier-skill.git'
$Name = 'luo-ming-color-science'
$Root = if ($env:CLAUDE_SKILLS_DIR) { $env:CLAUDE_SKILLS_DIR } else { Join-Path $env:USERPROFILE '.claude\skills' }
$Dest = Join-Path $Root $Name

Write-Host ''
Write-Host '🎨 Ronnier Skill' -ForegroundColor Cyan -NoNewline
Write-Host ' — 色彩科學筆記 / Colour Science Notes'
Write-Host ''

if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Host '✗ ' -ForegroundColor Red -NoNewline
    Write-Host '找不到 git，請先安裝。 / git not found, please install it first.'
    Write-Host '  https://git-scm.com/download/win'
    exit 1
}

if (Test-Path (Join-Path $Dest '.git')) {
    Write-Host '  已安裝，正在更新… / Already installed, updating…'
    git -C $Dest pull --ff-only --quiet
    $Action = '更新完成 / Updated'
}
elseif (Test-Path $Dest) {
    Write-Host '✗ ' -ForegroundColor Red -NoNewline
    Write-Host "$Dest 已存在但不是 git repo。"
    Write-Host '  請先備份並移除它，再重新執行。'
    Write-Host '  Path exists but is not a git repo. Back it up and remove it, then retry.'
    exit 1
}
else {
    Write-Host '  正在下載… / Downloading…'
    New-Item -ItemType Directory -Force -Path $Root | Out-Null
    git clone --quiet --depth 1 $Repo $Dest
    $Action = '安裝完成 / Installed'
}

$Count = (Get-ChildItem -Path (Join-Path $Dest 'references') -Filter '*.md' -ErrorAction SilentlyContinue).Count

Write-Host ''
Write-Host "✓ $Action" -ForegroundColor Green
Write-Host "  位置 / Location : $Dest"
Write-Host "  參考檔 / Files  : $Count 份"
Write-Host ''
Write-Host '開一個新的 Claude Code session，然後試試：'
Write-Host 'Open a new Claude Code session and try:'
Write-Host ''
Write-Host '  亮度跟明度差在哪？' -ForegroundColor Yellow
Write-Host '  CIEDE2000 為什麼要有旋轉項？' -ForegroundColor Yellow
Write-Host "  /$Name" -ForegroundColor Yellow
Write-Host ''
