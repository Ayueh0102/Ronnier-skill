# sync.ps1 —— 維護者用：把「正在使用的 skill」同步回這個 repo 並推上去
#
# 使用情境：你平常直接編輯 ~/.claude/skills/luo-ming-color-science/（實際生效的那份），
#           改完跑這支就會同步到 repo、commit、push。
#
#   .\sync.ps1                    # 用預設訊息
#   .\sync.ps1 "補上 CSF 係數"     # 自訂 commit 訊息
#
# （一般使用者不需要這支，這是給維護 repo 的人用的。）

param([string]$Message = "docs: 更新筆記")

$ErrorActionPreference = 'Stop'

$Live = Join-Path $env:USERPROFILE '.claude\skills\luo-ming-color-science'
$Repo = $PSScriptRoot

if (-not (Test-Path $Live)) {
    Write-Host "✗ 找不到使用中的 skill：$Live" -ForegroundColor Red
    exit 1
}

Write-Host ''
Write-Host '同步中…' -ForegroundColor Cyan
Write-Host "  來源 $Live"
Write-Host "  目標 $Repo"
Write-Host ''

# 只同步內容檔，不碰 repo 自己的東西（.git / README / install / sync / .gitignore …）
foreach ($item in @('SKILL.md', 'references', 'tools')) {
    $src = Join-Path $Live $item
    if (Test-Path $src) {
        Copy-Item -Path $src -Destination $Repo -Recurse -Force
        Write-Host "  ✓ $item"
    }
}

Push-Location $Repo
try {
    $changes = git status --porcelain
    if (-not $changes) {
        Write-Host ''
        Write-Host '沒有變更，不需要 commit。' -ForegroundColor Yellow
        Write-Host ''
        return
    }

    Write-Host ''
    Write-Host '變更清單：' -ForegroundColor Cyan
    git status --short
    Write-Host ''

    git add -A
    git commit -q -m $Message
    git push -q

    Write-Host "✓ 已推送：$Message" -ForegroundColor Green
    Write-Host ''
}
finally {
    Pop-Location
}
