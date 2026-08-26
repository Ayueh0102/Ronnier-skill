<div align="center">

# 安裝指南 / Installation Guide

**[Claude Code](#claude-code) ｜ [Codex](#codex) ｜ [Cursor / Windsurf / Cline](#cursor--windsurf--cline) ｜ [只想讀筆記](#只想讀筆記--just-reading)**

</div>

---

## 事前準備 / Prerequisites

只需要 **git**。

| 平台 | 檢查 | 沒有的話 |
|---|---|---|
| **macOS** | `git --version` | `xcode-select --install` 或 `brew install git` |
| **Windows** | `git --version` | https://git-scm.com/download/win |
| **Linux** | `git --version` | `sudo apt install git` / `sudo dnf install git` |

---
---

<a name="claude-code"></a>
# 🟣 Claude Code

## 一鍵安裝 / One-liner

### 🍎 macOS ／ 🐧 Linux

```bash
curl -fsSL https://raw.githubusercontent.com/Ayueh0102/Ronnier-skill/main/install.sh | bash
```

### 🪟 Windows（PowerShell）

```bash
irm https://raw.githubusercontent.com/Ayueh0102/Ronnier-skill/main/install.ps1 | iex
```

> **Windows 提醒**：用 **PowerShell**，不是 CMD。
> 如果出現執行原則錯誤，先跑：
> `Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass`

## 手動安裝 / Manual

### 🍎 macOS ／ 🐧 Linux
```bash
git clone https://github.com/Ayueh0102/Ronnier-skill.git \
  ~/.claude/skills/luo-ming-color-science
```

### 🪟 Windows（PowerShell）
```bash
git clone https://github.com/Ayueh0102/Ronnier-skill.git "$env:USERPROFILE\.claude\skills\luo-ming-color-science"
```

> **⚠️ 資料夾名稱要用 `luo-ming-color-science`**（不是 repo 名 `Ronnier-skill`）——
> 那是 skill 的識別名稱，一鍵安裝腳本已經處理好了。

## 確認裝好了

開一個**新的** Claude Code session，然後：

```
/luo-ming-color-science
```

或直接問一個色彩學問題，例如「亮度跟明度差在哪？」——會自動載入。

## 更新 / Update

再跑一次一鍵安裝指令就好，它會偵測到已安裝並 `git pull`。

或手動：
```bash
git -C ~/.claude/skills/luo-ming-color-science pull
```

## 移除 / Uninstall

```bash
rm -rf ~/.claude/skills/luo-ming-color-science          # macOS / Linux
```
```bash
Remove-Item -Recurse -Force "$env:USERPROFILE\.claude\skills\luo-ming-color-science"   # Windows
```

---
---

<a name="codex"></a>
# 🟢 Codex

Codex 讀的是 **`AGENTS.md`**。本專案已經備好一份（在 repo 根目錄）。

## 方式 A：只給某一個專案用（推薦）

把知識庫放進你的專案，Codex 就會自動讀到 `AGENTS.md`：

### 🍎 macOS ／ 🐧 Linux
```bash
cd /path/to/your-project
git clone --depth 1 https://github.com/Ayueh0102/Ronnier-skill.git .colour-science
echo "" >> AGENTS.md
echo "## 色彩科學知識庫" >> AGENTS.md
echo "遇到色彩科學／色度學問題時，先讀 \`.colour-science/AGENTS.md\` 的路由表，再讀對應的 \`.colour-science/references/*.md\`。不要憑記憶回答色彩學的常數與公式。" >> AGENTS.md
```

### 🪟 Windows（PowerShell）
```bash
cd C:\path\to\your-project ; git clone --depth 1 https://github.com/Ayueh0102/Ronnier-skill.git .colour-science ; Add-Content AGENTS.md "`n## 色彩科學知識庫`n遇到色彩科學／色度學問題時，先讀 ``.colour-science/AGENTS.md`` 的路由表，再讀對應的 ``.colour-science/references/*.md``。不要憑記憶回答色彩學的常數與公式。"
```

記得把 `.colour-science/` 加進 `.gitignore`（如果你不想把它一起 commit）。

## 方式 B：全域可用

放到家目錄，然後在 Codex 的全域 `AGENTS.md` 指過去：

### 🍎 macOS ／ 🐧 Linux
```bash
git clone --depth 1 https://github.com/Ayueh0102/Ronnier-skill.git ~/.colour-science
mkdir -p ~/.codex
cat >> ~/.codex/AGENTS.md <<'EOF'

## 色彩科學知識庫
遇到色彩科學／色度學問題時，先讀 ~/.colour-science/AGENTS.md 的路由表，
再讀對應的 ~/.colour-science/references/*.md。
不要憑記憶回答色彩學的常數與公式 —— 那裡面有太多容易記混的東西。
EOF
```

### 🪟 Windows（PowerShell）
```bash
git clone --depth 1 https://github.com/Ayueh0102/Ronnier-skill.git "$env:USERPROFILE\.colour-science" ; New-Item -ItemType Directory -Force "$env:USERPROFILE\.codex" | Out-Null ; Add-Content "$env:USERPROFILE\.codex\AGENTS.md" "`n## 色彩科學知識庫`n遇到色彩科學／色度學問題時，先讀 ~/.colour-science/AGENTS.md 的路由表，再讀對應的 references/*.md。不要憑記憶回答色彩學的常數與公式。"
```

## 確認裝好了

問 Codex：

```
色彩科學裡，illuminance 跟 luminance 差在哪？CIECAM02 的 L_A 該用哪一個？
```

它應該會去讀 `00-terminology-traps.md`，並告訴你 **L_A 用 cd/m²（luminance），
不是 lux（illuminance）**。

---
---

<a name="cursor--windsurf--cline"></a>
# 🔵 Cursor / Windsurf / Cline

這幾個工具也讀 `AGENTS.md`，或有自己的規則檔。做法跟 Codex 的**方式 A** 相同：

```bash
cd /path/to/your-project
git clone --depth 1 https://github.com/Ayueh0102/Ronnier-skill.git .colour-science
```

然後依你的工具在規則檔裡加一句指路：

| 工具 | 規則檔位置 |
|---|---|
| **Cursor** | `.cursor/rules/colour-science.mdc` 或 `.cursorrules` |
| **Windsurf** | `.windsurfrules` |
| **Cline** | `.clinerules` |
| **通用** | `AGENTS.md` |

要寫的內容：

```
遇到色彩科學／色度學問題時，先讀 .colour-science/AGENTS.md 的路由表，
再讀對應的 .colour-science/references/*.md。
特別注意：實作任何公式前先查 00-differences.md 的 F 類（教材有 5 處印刷錯誤會讓程式算錯）。
```

---
---

<a name="只想讀筆記--just-reading"></a>
# 📖 只想讀筆記 / Just reading

不用裝任何工具。`references/` 底下全部是純 Markdown。

```bash
git clone --depth 1 https://github.com/Ayueh0102/Ronnier-skill.git
cd Ronnier-skill/references
```

**從 [`README_索引.md`](references/README_索引.md) 開始** —— 那裡有完整目錄與
「明講會考的重點」快速索引。

或者直接在 GitHub 網頁上瀏覽，Markdown 會自動渲染。

**建議的閱讀順序**：

| 你的情況 | 從哪裡開始 |
|---|---|
| **完全新手** | `00-terminology-traps.md` → `L01` → `L02` |
| **要考試** | `README_索引.md` 的「快速索引」→ 對應章節 |
| **要寫程式** | `00-formulas.md` + `00-differences.md` 的 F 類 |
| **名詞一直搞混** | `00-terminology-traps.md`（就是為這個寫的） |

---

## 遇到問題？

- 安裝相關 → 開 [issue](https://github.com/Ayueh0102/Ronnier-skill/issues)
- 內容有錯 → 見 [`CONTRIBUTING.md`](CONTRIBUTING.md)
- 想知道這是怎麼做的 → 見 [`PROJECT.md`](PROJECT.md)
