# Ronnier Skill — installer for Windows
#
#   irm https://raw.githubusercontent.com/Ayueh0102/Ronnier-skill/main/install.ps1 | iex
#
# 帶參數的話（PowerShell 的 iex 不吃參數，要先下載）：
#   irm https://raw.githubusercontent.com/Ayueh0102/Ronnier-skill/main/install.ps1 -OutFile i.ps1
#   .\i.ps1 -Codex          # 額外設定 Codex
#   .\i.ps1 -CodexOnly      # 只設定 Codex

[CmdletBinding()]
param(
    [switch]$Codex,
    [switch]$CodexOnly
)

$ErrorActionPreference = 'Stop'

$Repo      = 'https://github.com/Ayueh0102/Ronnier-skill.git'
$Name      = 'luo-ming-color-science'
$SkillRoot = if ($env:CLAUDE_SKILLS_DIR) { $env:CLAUDE_SKILLS_DIR } else { Join-Path $env:USERPROFILE '.claude\skills' }
$SkillDir  = Join-Path $SkillRoot $Name
$CodexDir  = Join-Path $env:USERPROFILE '.colour-science'

$DoClaude = -not $CodexOnly
$DoCodex  = $Codex -or $CodexOnly

Write-Host ''
Write-Host '🎨 Ronnier Skill' -ForegroundColor Cyan -NoNewline
Write-Host ' — 色彩科學筆記 / Colour Science Notes'
Write-Host ''

if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Host '✗ ' -ForegroundColor Red -NoNewline
    Write-Host '找不到 git / git not found'
    Write-Host '  https://git-scm.com/download/win'
    Write-Host ''
    exit 1
}

function Get-Into {
    param([string]$Dest, [string]$Label)

    if (Test-Path (Join-Path $Dest '.git')) {
        Write-Host "  ${Label}：已安裝，更新中… / updating…"
        git -C $Dest pull --ff-only --quiet
        Write-Host '  ✓ ' -ForegroundColor Green -NoNewline
        Write-Host "$Label 已更新 / updated"
    }
    elseif (Test-Path $Dest) {
        Write-Host '✗ ' -ForegroundColor Red -NoNewline
        Write-Host "$Dest 已存在但不是 git repo"
        Write-Host '  請先備份並移除，再重跑。/ Back it up and remove it, then retry.'
        Write-Host ''
        exit 1
    }
    else {
        Write-Host "  ${Label}：下載中… / downloading…"
        New-Item -ItemType Directory -Force -Path (Split-Path $Dest -Parent) | Out-Null
        git clone --quiet --depth 1 $Repo $Dest
        Write-Host '  ✓ ' -ForegroundColor Green -NoNewline
        Write-Host "$Label 已安裝 / installed"
    }
}

# ── Claude Code ─────────────────────────────────────────
if ($DoClaude) {
    Write-Host '🟣 Claude Code' -ForegroundColor Cyan
    Get-Into -Dest $SkillDir -Label 'skill'
    Write-Host "     $SkillDir" -ForegroundColor DarkGray
    Write-Host ''
}

# ── Codex ───────────────────────────────────────────────
if ($DoCodex) {
    Write-Host '🟢 Codex' -ForegroundColor Cyan
    Get-Into -Dest $CodexDir -Label 'knowledge base'

    $CodexHome  = Join-Path $env:USERPROFILE '.codex'
    $CodexAgent = Join-Path $CodexHome 'AGENTS.md'
    New-Item -ItemType Directory -Force -Path $CodexHome | Out-Null

    $Marker = '<!-- ronnier-skill -->'
    $already = (Test-Path $CodexAgent) -and ((Get-Content $CodexAgent -Raw -ErrorAction SilentlyContinue) -like "*$Marker*")

    if ($already) {
        Write-Host '  ✓ ' -ForegroundColor Green -NoNewline
        Write-Host '~/.codex/AGENTS.md 已設定過，略過'
    }
    else {
        $block = @"

$Marker
## 色彩科學知識庫 / Colour Science Knowledge Base
遇到色彩科學、色度學（colorimetry）相關問題時，
先讀 $CodexDir\AGENTS.md 的路由表，再讀對應的 references\*.md。
**不要憑記憶回答色彩學的常數與公式** —— 那裡面有太多容易記混的東西。
特別注意：實作任何公式前先查 00-differences.md 的 F 類（教材有 5 處印刷錯誤會讓程式算錯）。
"@
        Add-Content -Path $CodexAgent -Value $block -Encoding utf8
        Write-Host '  ✓ ' -ForegroundColor Green -NoNewline
        Write-Host '已寫入 ~/.codex/AGENTS.md'
    }
    Write-Host "     $CodexDir" -ForegroundColor DarkGray
    Write-Host ''
}

# ── 完成 ────────────────────────────────────────────────
$Base  = if ($DoClaude) { $SkillDir } else { $CodexDir }
$Count = (Get-ChildItem -Path (Join-Path $Base 'references') -Filter '*.md' -ErrorAction SilentlyContinue).Count

Write-Host '✓ 完成 / Done' -ForegroundColor Green -NoNewline
Write-Host "  —  參考檔 $Count 份 / $Count reference files"
Write-Host ''
Write-Host '試試看 / Try asking:'
Write-Host '  亮度跟明度差在哪？' -ForegroundColor Yellow
Write-Host '  CIEDE2000 為什麼要有旋轉項？' -ForegroundColor Yellow
if ($DoClaude) {
    Write-Host "  /$Name" -ForegroundColor Yellow -NoNewline
    Write-Host '   ← 手動呼叫'
}
Write-Host ''
Write-Host '其他工具（Cursor / Windsurf / Cline）請見 INSTALL.md' -ForegroundColor DarkGray
Write-Host ''
