#!/usr/bin/env bash
# Ronnier Skill — installer for macOS / Linux
#
#   curl -fsSL https://raw.githubusercontent.com/Ayueh0102/Ronnier-skill/main/install.sh | bash
#
# 選項 / Options:
#   --codex     額外設定 Codex（寫入 ~/.codex/AGENTS.md）
#   --codex-only  只設定 Codex，不裝 Claude Code skill

set -euo pipefail

REPO="https://github.com/Ayueh0102/Ronnier-skill.git"
NAME="luo-ming-color-science"
SKILL_DIR="${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}/$NAME"
CODEX_DIR="$HOME/.colour-science"

DO_CLAUDE=1
DO_CODEX=0
for arg in "$@"; do
  case "$arg" in
    --codex)      DO_CODEX=1 ;;
    --codex-only) DO_CODEX=1; DO_CLAUDE=0 ;;
  esac
done

c_cyan=$'\033[1;36m'; c_green=$'\033[1;32m'; c_red=$'\033[1;31m'
c_yellow=$'\033[1;33m'; c_dim=$'\033[2m'; c_off=$'\033[0m'

printf '\n%s🎨 Ronnier Skill%s — 色彩科學筆記 / Colour Science Notes\n\n' "$c_cyan" "$c_off"

if ! command -v git >/dev/null 2>&1; then
  printf '%s✗%s 找不到 git / git not found\n' "$c_red" "$c_off"
  printf '  macOS : xcode-select --install\n'
  printf '  Linux : sudo apt install git\n\n'
  exit 1
fi

# ── 通用：clone 或 pull ───────────────────────────────────
fetch_into() {
  local dest="$1" label="$2"
  if [ -d "$dest/.git" ]; then
    printf '  %s：已安裝，更新中… / updating…\n' "$label"
    git -C "$dest" pull --ff-only --quiet
    printf '  %s✓%s %s 已更新 / updated\n' "$c_green" "$c_off" "$label"
  elif [ -e "$dest" ]; then
    printf '%s✗%s %s 已存在但不是 git repo\n' "$c_red" "$c_off" "$dest"
    printf '  請先備份並移除，再重跑。/ Back it up and remove it, then retry.\n\n'
    exit 1
  else
    printf '  %s：下載中… / downloading…\n' "$label"
    mkdir -p "$(dirname "$dest")"
    git clone --quiet --depth 1 "$REPO" "$dest"
    printf '  %s✓%s %s 已安裝 / installed\n' "$c_green" "$c_off" "$label"
  fi
}

# ── Claude Code ─────────────────────────────────────────
if [ "$DO_CLAUDE" = 1 ]; then
  printf '%s🟣 Claude Code%s\n' "$c_cyan" "$c_off"
  fetch_into "$SKILL_DIR" "skill"
  printf '     %s%s%s\n\n' "$c_dim" "$SKILL_DIR" "$c_off"
fi

# ── Codex ───────────────────────────────────────────────
if [ "$DO_CODEX" = 1 ]; then
  printf '%s🟢 Codex%s\n' "$c_cyan" "$c_off"
  fetch_into "$CODEX_DIR" "knowledge base"

  mkdir -p "$HOME/.codex"
  MARKER="<!-- ronnier-skill -->"
  if [ -f "$HOME/.codex/AGENTS.md" ] && grep -qF "$MARKER" "$HOME/.codex/AGENTS.md" 2>/dev/null; then
    printf '  %s✓%s ~/.codex/AGENTS.md 已設定過，略過\n' "$c_green" "$c_off"
  else
    cat >> "$HOME/.codex/AGENTS.md" <<EOF

$MARKER
## 色彩科學知識庫 / Colour Science Knowledge Base
遇到色彩科學、色度學（colorimetry）相關問題時，
先讀 $CODEX_DIR/AGENTS.md 的路由表，再讀對應的 references/*.md。
**不要憑記憶回答色彩學的常數與公式** —— 那裡面有太多容易記混的東西。
特別注意：實作任何公式前先查 00-differences.md 的 F 類（教材有 5 處印刷錯誤會讓程式算錯）。
EOF
    printf '  %s✓%s 已寫入 ~/.codex/AGENTS.md\n' "$c_green" "$c_off"
  fi
  printf '     %s%s%s\n\n' "$c_dim" "$CODEX_DIR" "$c_off"
fi

# ── 完成 ────────────────────────────────────────────────
BASE="${SKILL_DIR}"; [ "$DO_CLAUDE" = 1 ] || BASE="$CODEX_DIR"
COUNT=$(find "$BASE/references" -name '*.md' 2>/dev/null | wc -l | tr -d ' ')
printf '%s✓ 完成 / Done%s  —  參考檔 %s 份 / %s reference files\n\n' "$c_green" "$c_off" "$COUNT" "$COUNT"

printf '試試看 / Try asking:\n'
printf '  %s亮度跟明度差在哪？%s\n' "$c_yellow" "$c_off"
printf '  %sCIEDE2000 為什麼要有旋轉項？%s\n' "$c_yellow" "$c_off"
if [ "$DO_CLAUDE" = 1 ]; then
  printf '  %s/%s%s   ← 手動呼叫\n' "$c_yellow" "$NAME" "$c_off"
fi
printf '\n%s其他工具（Cursor / Windsurf / Cline）請見 INSTALL.md%s\n\n' "$c_dim" "$c_off"
