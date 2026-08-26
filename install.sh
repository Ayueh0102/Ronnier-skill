#!/usr/bin/env bash
# Ronnier Skill — installer for macOS / Linux
# 用法 / Usage:
#   curl -fsSL https://raw.githubusercontent.com/Ayueh0102/Ronnier-skill/main/install.sh | bash

set -euo pipefail

REPO="https://github.com/Ayueh0102/Ronnier-skill.git"
NAME="luo-ming-color-science"
DEST="${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}/$NAME"

printf '\n\033[1;36m🎨 Ronnier Skill\033[0m — 色彩科學筆記 / Colour Science Notes\n\n'

if ! command -v git >/dev/null 2>&1; then
  printf '\033[1;31m✗\033[0m 找不到 git，請先安裝。 / git not found, please install it first.\n'
  exit 1
fi

if [ -d "$DEST/.git" ]; then
  printf '  已安裝，正在更新… / Already installed, updating…\n'
  git -C "$DEST" pull --ff-only --quiet
  ACTION="更新完成 / Updated"
elif [ -e "$DEST" ]; then
  printf '\033[1;31m✗\033[0m %s 已存在但不是 git repo。\n' "$DEST"
  printf '  請先備份並移除它，再重新執行。\n'
  printf '  Path exists but is not a git repo. Back it up and remove it, then retry.\n'
  exit 1
else
  printf '  正在下載… / Downloading…\n'
  mkdir -p "$(dirname "$DEST")"
  git clone --quiet --depth 1 "$REPO" "$DEST"
  ACTION="安裝完成 / Installed"
fi

COUNT=$(find "$DEST/references" -name '*.md' 2>/dev/null | wc -l | tr -d ' ')

printf '\n\033[1;32m✓ %s\033[0m\n' "$ACTION"
printf '  位置 / Location : %s\n' "$DEST"
printf '  參考檔 / Files  : %s 份\n\n' "$COUNT"
printf '開一個新的 Claude Code session，然後試試：\n'
printf 'Open a new Claude Code session and try:\n\n'
printf '  \033[1;33m亮度跟明度差在哪？\033[0m\n'
printf '  \033[1;33mCIEDE2000 為什麼要有旋轉項？\033[0m\n'
printf '  \033[1;33m/%s\033[0m\n\n' "$NAME"
