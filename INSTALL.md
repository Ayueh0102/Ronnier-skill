<div align="center">

# 安裝指南 / Installation Guide

**[我該用哪一個？](#我該用哪一個) ｜ [Claude Code](#claude-code) ｜ [Codex](#codex) ｜ [Cursor 等](#cursor--windsurf--cline) ｜ [只想讀](#只想讀筆記) ｜ [疑難排解](#疑難排解)**

</div>

---

<a name="我該用哪一個"></a>
## 🤔 我該用哪一個？

| 你的情況 | 往這裡 |
|---|---|
| 我用 **Claude Code**（`claude` 指令 / 桌面版 / IDE 外掛） | [🟣 Claude Code](#claude-code) |
| 我用 **Codex**（OpenAI 的 coding agent） | [🟢 Codex](#codex) |
| 我用 **Cursor / Windsurf / Cline** | [🔵 這裡](#cursor--windsurf--cline) |
| 我沒有用 AI 工具，**只是想看這份筆記** | [📖 這裡](#只想讀筆記) |
| **我不知道我在用什麼** | 那大概是想看筆記 → [📖 這裡](#只想讀筆記) |

### 這東西裝起來會怎樣？

裝好之後，你的 AI 工具會**多一份色彩科學的參考書**。
問到色彩學的問題時，它會**去查那份書再回答**，而不是憑印象講。

差別大概是這樣：

```
沒裝：「Y 大概是 18 左右吧？」            ← 憑印象，可能對可能錯
有裝：「Y = 18.42。回代驗算：
        116 × 0.1842^(1/3) − 16 = 50.00 ✓
        順帶一提，你以為的中灰其實只反射 18% 的光。」
```

---

## 📋 事前準備 / Prerequisites

**只需要 git。** 檢查一下：

```bash
git --version
```

有印出版本號就可以了。沒有的話：

| 平台 | 怎麼裝 |
|---|---|
| 🍎 **macOS** | `xcode-select --install`（內建）或 `brew install git` |
| 🪟 **Windows** | 下載安裝：https://git-scm.com/download/win |
| 🐧 **Linux** | `sudo apt install git` 或 `sudo dnf install git` |

---
---

<a name="claude-code"></a>
# 🟣 Claude Code

## 一鍵安裝

### 🍎 macOS ／ 🐧 Linux

在**終端機**貼上：

```bash
curl -fsSL https://raw.githubusercontent.com/Ayueh0102/Ronnier-skill/main/install.sh | bash
```

### 🪟 Windows

在 **PowerShell**（不是 CMD）貼上：

```bash
irm https://raw.githubusercontent.com/Ayueh0102/Ronnier-skill/main/install.ps1 | iex
```

> **🪟 Windows 使用者注意兩件事**
> 1. **一定要用 PowerShell**。在 CMD 裡 `irm` 跟 `curl` 的行為都不一樣，會失敗。
>    （開始選單搜尋「PowerShell」即可）
> 2. 如果出現**執行原則（execution policy）**的錯誤，先跑這一行再重試：
>    ```bash
>    Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
>    ```
>    這只影響當前這個視窗，關掉就恢復，不會動到系統設定。

### 成功的話會看到

```
🎨 Ronnier Skill — 色彩科學筆記 / Colour Science Notes

🟣 Claude Code
  skill：下載中… / downloading…
  ✓ skill 已安裝 / installed
     /Users/you/.claude/skills/luo-ming-color-science

✓ 完成 / Done  —  參考檔 27 份 / 27 reference files

試試看 / Try asking:
  亮度跟明度差在哪？
  CIEDE2000 為什麼要有旋轉項？
  /luo-ming-color-science   ← 手動呼叫
```

---

## ✅ 確認真的裝好了

**開一個新的 Claude Code session**（重要 —— 舊的 session 不會重新載入 skill），
然後問：

```
亮度跟明度差在哪？
```

**如果裝好了**，回答會像這樣開頭：

> 先問你一件事：你講的「亮度」，是儀器量得出來的那個，還是你眼睛看到的那個？
> 這兩個是不同的東西⋯⋯
> ```
> Luminance   亮度     物理量   cd/m²
> Brightness  明亮度   知覺量   絕對
> Lightness   明度     知覺量   相對
> ```

**如果只給你一個籠統的解釋、沒有分成三個英文詞** —— 那就是沒載入，
看 [疑難排解](#疑難排解)。

也可以直接打斜線指令確認它在不在：

```
/luo-ming-color-science
```

---

## 🔧 手動安裝（不想跑腳本的話）

### 🍎 macOS ／ 🐧 Linux
```bash
git clone https://github.com/Ayueh0102/Ronnier-skill.git ~/.claude/skills/luo-ming-color-science
```

### 🪟 Windows（PowerShell）
```bash
git clone https://github.com/Ayueh0102/Ronnier-skill.git "$env:USERPROFILE\.claude\skills\luo-ming-color-science"
```

> **⚠️ 最後那個資料夾名稱必須是 `luo-ming-color-science`**，不是 repo 名 `Ronnier-skill`。
> 那是 skill 的識別名稱，取錯名字它不會被載入。

---

## 🔄 更新

再跑一次一鍵安裝指令就好 —— 它會偵測到已安裝，改成 `git pull`。

或手動：

```bash
git -C ~/.claude/skills/luo-ming-color-science pull
```
```bash
git -C "$env:USERPROFILE\.claude\skills\luo-ming-color-science" pull
```

---

## 🗑 移除

```bash
rm -rf ~/.claude/skills/luo-ming-color-science
```
```bash
Remove-Item -Recurse -Force "$env:USERPROFILE\.claude\skills\luo-ming-color-science"
```

---
---

<a name="codex"></a>
# 🟢 Codex

Codex 讀的是 **`AGENTS.md`**。本專案已經備好一份。

## 一鍵安裝（全域可用，推薦）

### 🍎 macOS ／ 🐧 Linux

```bash
curl -fsSL https://raw.githubusercontent.com/Ayueh0102/Ronnier-skill/main/install.sh | bash -s -- --codex
```

### 🪟 Windows

PowerShell 的 `iex` 不能帶參數，要先下載再執行：

```bash
irm https://raw.githubusercontent.com/Ayueh0102/Ronnier-skill/main/install.ps1 -OutFile i.ps1 ; .\i.ps1 -Codex ; Remove-Item i.ps1
```

**腳本會做兩件事**：

1. 把知識庫放到 `~/.colour-science`
2. 在 `~/.codex/AGENTS.md` **附加**一段指路（不會覆蓋你原本的內容，重跑也不會重複寫入）

---

## 🔧 手動安裝

### 方式 A：只給某一個專案用

```bash
cd /path/to/your-project
git clone --depth 1 https://github.com/Ayueh0102/Ronnier-skill.git .colour-science
```

然後在專案的 `AGENTS.md` 加一段（沒有就新建一個）：

```markdown
### 色彩科學知識庫

遇到色彩科學／色度學問題時，先讀 `.colour-science/AGENTS.md` 的路由表，
再讀對應的 `.colour-science/references/*.md`。
不要憑記憶回答色彩學的常數與公式。
實作任何公式前，先查 `.colour-science/references/00-differences.md` 的 F 類
（教材有 5 處印刷錯誤會讓程式算錯）。
```

記得把 `.colour-science/` 加進 `.gitignore`（如果不想連它一起 commit）。

### 方式 B：全域可用

```bash
git clone --depth 1 https://github.com/Ayueh0102/Ronnier-skill.git ~/.colour-science
mkdir -p ~/.codex
```

然後編輯 `~/.codex/AGENTS.md`，加入上面那段（把路徑改成 `~/.colour-science/...`）。

---

## ✅ 確認真的裝好了

問 Codex：

```
色彩科學裡 illuminance 跟 luminance 差在哪？CIECAM02 的 L_A 該用哪一個？
```

**裝好的話**它會告訴你：

> - **Illuminance 照度**（lux）＝ 光「打到」表面上
> - **Luminance 亮度**（cd/m²）＝ 光從表面「射出來」
> - **`L_A` 要用 cd/m²（luminance），不是 lux** —— 這是常見的實作錯誤
> - 換算：`L_A ≈ 照度 × Y% / (100 × π)`

如果它只是泛泛講「照度是入射光、亮度是反射光」而**沒有提到 L_A 的單位陷阱**，
那大概沒讀到知識庫 —— 看 [疑難排解](#疑難排解)。

---
---

<a name="cursor--windsurf--cline"></a>
# 🔵 Cursor / Windsurf / Cline

做法跟 Codex 的「方式 A」相同 —— clone 進專案，然後在規則檔裡指過去。

```bash
cd /path/to/your-project
git clone --depth 1 https://github.com/Ayueh0102/Ronnier-skill.git .colour-science
```

規則檔放哪裡：

| 工具 | 規則檔 |
|---|---|
| **Cursor** | `.cursor/rules/colour-science.mdc`（新版）或 `.cursorrules`（舊版） |
| **Windsurf** | `.windsurfrules` |
| **Cline** | `.clinerules` |
| **通用 / 其他** | `AGENTS.md` |

內容都一樣，寫這段：

```markdown
遇到色彩科學／色度學問題時，先讀 .colour-science/AGENTS.md 的路由表，
再讀對應的 .colour-science/references/*.md。
不要憑記憶回答色彩學的常數與公式。
實作任何公式前先查 00-differences.md 的 F 類（教材有 5 處印刷錯誤會讓程式算錯）。
```

---
---

<a name="只想讀筆記"></a>
# 📖 只想讀筆記

**不用裝任何工具。** `references/` 底下全部是純 Markdown。

**最簡單的方式**：直接在 GitHub 網頁上點進
**[`references/`](references)** 瀏覽，Markdown 會自動渲染。

**想離線看**：

```bash
git clone --depth 1 https://github.com/Ayueh0102/Ronnier-skill.git
cd Ronnier-skill/references
```

用任何 Markdown 編輯器打開都可以（VS Code、Typora、Obsidian⋯⋯）。

## 建議的閱讀順序

| 你的情況 | 從哪裡開始 |
|---|---|
| **完全新手** | [`00-terminology-traps.md`](references/00-terminology-traps.md) → `L01` → `L02` |
| **要考試** | [`README_索引.md`](references/README_索引.md) 的「快速索引」→ 對應章節 |
| **要寫程式** | [`00-formulas.md`](references/00-formulas.md) ＋ [`00-differences.md`](references/00-differences.md) 的 F 類 |
| **名詞一直搞混** | [`00-terminology-traps.md`](references/00-terminology-traps.md)（就是為這個寫的） |
| **想知道整體架構** | [`README_索引.md`](references/README_索引.md) |

---
---

<a name="疑難排解"></a>
# 🔧 疑難排解 / Troubleshooting

<details>
<summary><b>裝好了，但問問題的時候好像沒有用到</b></summary>

**最常見的原因：session 沒有重開。**
Skill 是在 session 啟動時載入的，**在已經開著的對話裡裝，是不會生效的**。
關掉重開一個新的再試。

其他可能：

1. **資料夾名稱錯了** —— 必須是 `luo-ming-color-science`：
   ```bash
   ls ~/.claude/skills/
   ```
   如果看到的是 `Ronnier-skill`，改名：
   ```bash
   mv ~/.claude/skills/Ronnier-skill ~/.claude/skills/luo-ming-color-science
   ```

2. **檔案沒下載完整** —— 確認 `SKILL.md` 在：
   ```bash
   ls ~/.claude/skills/luo-ming-color-science/SKILL.md
   ```

3. **試試手動呼叫**：在對話裡打 `/luo-ming-color-science`。
   如果這樣可以、自動觸發不行，那是觸發語的問題，直接手動叫也行。

</details>

<details>
<summary><b>🪟 Windows：出現「因為這個系統上停用指令碼執行」</b></summary>

這是 PowerShell 的執行原則擋住了。跑這一行再重試：

```bash
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
```

`-Scope Process` 表示**只影響當前這個 PowerShell 視窗**，關掉就恢復，
不會動到你的系統設定。

</details>

<details>
<summary><b>🪟 Windows：`irm` 或 `curl` 說找不到指令</b></summary>

**你可能在 CMD 而不是 PowerShell。**

開始選單搜尋「**PowerShell**」，用那個開。
（CMD 的視窗標題是 `命令提示字元`，PowerShell 是 `Windows PowerShell`。）

</details>

<details>
<summary><b>顯示成亂碼 / 中文變成問號</b></summary>

**Windows 終端機的編碼問題**，不影響檔案內容。在 PowerShell 跑：

```bash
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
```

或改用 **Windows Terminal**（比舊的 PowerShell 視窗好很多）。

檔案本身是 UTF-8，用任何編輯器打開都是正常的。

</details>

<details>
<summary><b>「已存在但不是 git repo」</b></summary>

代表那個位置已經有東西了，但不是用 git 裝的（可能你之前手動複製過）。

備份之後移除再重裝：

```bash
mv ~/.claude/skills/luo-ming-color-science ~/backup-colour-science
```
```bash
Move-Item "$env:USERPROFILE\.claude\skills\luo-ming-color-science" "$env:USERPROFILE\backup-colour-science"
```

然後重跑安裝指令。

</details>

<details>
<summary><b>🟢 Codex 好像沒讀到知識庫</b></summary>

1. **確認 `~/.codex/AGENTS.md` 裡有那段指路**：
   ```bash
   cat ~/.codex/AGENTS.md
   ```
   應該要看到 `<!-- ronnier-skill -->` 這個標記。

2. **確認路徑是對的**：
   ```bash
   ls ~/.colour-science/references/ | head
   ```

3. **Codex 版本太舊可能不讀全域 `AGENTS.md`** ——
   改用「方式 A」把知識庫放進專案目錄，那個一定會讀到。

</details>

<details>
<summary><b>`git clone` 很慢 / 卡住</b></summary>

repo 不大（約 900 KB），如果很慢通常是網路問題。

試試 `--depth 1`（只抓最新版本，不抓歷史）：

```bash
git clone --depth 1 https://github.com/Ayueh0102/Ronnier-skill.git ~/.claude/skills/luo-ming-color-science
```

一鍵安裝腳本已經內建這個參數了。

</details>

<details>
<summary><b>我想裝到別的位置</b></summary>

設環境變數 `CLAUDE_SKILLS_DIR` 再跑安裝腳本：

```bash
export CLAUDE_SKILLS_DIR=/your/custom/path
curl -fsSL https://raw.githubusercontent.com/Ayueh0102/Ronnier-skill/main/install.sh | bash
```
```bash
$env:CLAUDE_SKILLS_DIR = "D:\your\custom\path"
irm https://raw.githubusercontent.com/Ayueh0102/Ronnier-skill/main/install.ps1 | iex
```

</details>

---

## 還是不行？

開一個 [issue](https://github.com/Ayueh0102/Ronnier-skill/issues)，附上：

- 你的**作業系統**（macOS / Windows / Linux）
- 你用的**工具**（Claude Code / Codex / 其他）
- **完整的錯誤訊息**（截圖或貼上文字都可以）

---

## 其他文件

| 檔案 | 內容 |
|---|---|
| [`README.md`](README.md) | 專案介紹、內容導覽 |
| [`CONTRIBUTING.md`](CONTRIBUTING.md) | 想修正或補充內容 |
| [`OPEN-QUESTIONS.md`](OPEN-QUESTIONS.md) | 還沒查到答案的項目 |
