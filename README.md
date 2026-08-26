<div align="center">

# 🎨 Ronnier Skill

### 色彩科學完整中文筆記 · 給 Claude Code 用的一個「隨身教授」
### A Complete Colour Science Knowledge Base as a Claude Code Skill

**[中文](#中文) ｜ [English](#english)**

</div>

---

> 你以為的「中灰」，其實只反射了 **18%** 的光。
>
> CIELAB 裡 `a*` 乘 500、`b*` 乘 200 —— 那個 **2.5 : 1** 的比例是 **1944 年**定下來的，八十年沒人動過。
>
> 1976 年 CIE 一口氣推出**兩個**色空間，不是因為需要兩個，是因為兩派人馬誰也說服不了誰。
>
> 色彩科學裡這種事很多。**這份筆記就是在講這些。**

---

<a name="中文"></a>
# 中文

## 這是什麼

一份**色彩科學／色度學的完整中文學習筆記**，包成 [Claude Code](https://claude.com/claude-code) 的 skill。

裝上之後，你可以直接用中文問：

```
「亮度跟明度到底差在哪？」
「CIEDE2000 為什麼要有一個旋轉項？」
「L* = 50 的灰，Y 是多少？」
「幫我複習色序系統，我明天考試」
「我要幫賣場選燈，該看什麼指標？」
```

它會**先講這東西在解什麼問題**，再給定義和公式 —— 而不是丟一堆式子給你背。

**不用 Claude Code 也能用**：`references/` 底下全部是純 Markdown，直接當一本筆記讀就好。
從 [`references/README_索引.md`](references/README_索引.md) 開始。

---

## 一鍵安裝

支援 **Claude Code**、**Codex**，以及任何讀 `AGENTS.md` 的工具（Cursor / Windsurf / Cline）。

> **不確定自己在用哪一個？** [`INSTALL.md`](INSTALL.md) 開頭有一張對照表，
> 以及**每一步的預期畫面**與**疑難排解**（Windows 執行原則、skill 沒觸發、中文亂碼⋯⋯）。

### 🟣 Claude Code

| 平台 | 指令 |
|---|---|
| 🍎 **macOS** ／ 🐧 **Linux** | `curl -fsSL https://raw.githubusercontent.com/Ayueh0102/Ronnier-skill/main/install.sh \| bash` |
| 🪟 **Windows**（PowerShell） | `irm https://raw.githubusercontent.com/Ayueh0102/Ronnier-skill/main/install.ps1 \| iex` |

裝好之後開一個**新的** session，問任何色彩學問題就會自動載入，
也可以打 `/luo-ming-color-science` 手動叫它。

### 🟢 Codex

同一支腳本加 `--codex`，會把知識庫放到 `~/.colour-science` 並寫進 `~/.codex/AGENTS.md`：

```bash
# macOS / Linux
curl -fsSL https://raw.githubusercontent.com/Ayueh0102/Ronnier-skill/main/install.sh | bash -s -- --codex
```

```bash
# Windows：先下載再帶參數執行
irm https://raw.githubusercontent.com/Ayueh0102/Ronnier-skill/main/install.ps1 -OutFile i.ps1 ; .\i.ps1 -Codex
```

### 🔵 Cursor / Windsurf / Cline

clone 進你的專案，然後在規則檔裡指過去：

```bash
git clone --depth 1 https://github.com/Ayueh0102/Ronnier-skill.git .colour-science
```

### 📖 只想讀筆記

不用裝任何東西 —— `references/` 全部是純 Markdown，
從 [`references/README_索引.md`](references/README_索引.md) 開始就好。

> **📘 完整安裝說明（含手動安裝、更新、移除、疑難排解）：[`INSTALL.md`](INSTALL.md)**

**更新**：再跑一次一鍵安裝指令，它會自動偵測並 `git pull`。

---

## 裡面有什麼

### 📚 20 篇課堂筆記（約 13,000 行）

| 範圍 | 主題 | 裡面有什麼好玩的 |
|---|---|---|
| **L01–L02** | CIE 基礎、量測幾何、XYZ | 為什麼「XYZ 相同」不代表兩個顏色會配 |
| **L03–L05** | 物體光學、量測儀器、不確定度 | 玻璃表面永遠反射 4% 的光，這件事怎麼毀掉你的量測 |
| **L06** | 光源與色溫 | 為什麼賣場都用同一款燈管 |
| **L07–L08** | 眼睛結構、對立色理論、色覺異常 | 「看到橘色」這件事發生在**大腦**，不是眼睛 |
| **L09–L10** | 心理物理學、實驗設計 | 怎麼用數學把「你覺得比較亮」變成一個數字 |
| **L11–L12** | 色序系統：Munsell / NCS / Ostwald / DIN | Ostwald 為什麼停產？因為顏料公司每年都出更飽和的新顏色 |
| **L13–L14** | 色差公式、影像色差、S-CIELAB | 兩張圖 ΔE 都是 5.8，但人眼一看就知道差很多 —— 怎麼辦 |
| **L15** | 同色異譜 | 為什麼在店裡看是同色，走到外面就不一樣了 |
| **L16–L17** | 色貌模型 CIECAM02 / CAM16 | 教授本人說「這題 100% 會考」的那一條公式 |
| **L18–L19** | 色適應、色恆常、演色性 | 人眼能適應**十億比一**的亮度範圍，瞳孔只負責其中的 10 |
| **L20** | Rf / Rg / Color Vector Graphic | CRI 用了 50 年，為什麼現在要換掉 |

### 🔍 6 份彙整檔

| 檔案 | 內容 |
|---|---|
| ⭐ [`00-terminology-traps.md`](references/00-terminology-traps.md) | **中文學色彩學最容易死的地方**：亮度／明度／明亮度、彩度／飽和度／色度、照度 vs 亮度 |
| [`00-formulas.md`](references/00-formulas.md) | 全部公式速查，14 大類 |
| [`00-differences.md`](references/00-differences.md) | 「課堂講法 vs 標準說法」，A–H 八類 |
| [`00-glossary.md`](references/00-glossary.md) | 中英名詞對照 + 轉錄勘誤 |
| [`00-literature.md`](references/00-literature.md) | 原始論文出處、2021 之後的新發展 |
| [`00-primary-sources.md`](references/00-primary-sources.md) | 原始論文的蒸餾 |

---

## 為什麼這份跟一般筆記不一樣

### 1️⃣ 數字都驗算過，不是抄的

教材上的常數，能用邊界條件驗的都驗了。舉個實際抓到的例子：

```
DIN 6164 的 Darkness Degree 常數，教材印的是 6.1273
   但定義說「D 要以最佳色為原點」→ 最佳色的 D 必須等於 0
   代進去：6.1273 → D = 0.0729  ❌
           6.1723 → D = 0.00003 ✅
   → 是 27 / 72 打反了
```

`00-differences.md` 的 **F 類**列出教材上的印刷錯誤，
**其中五個會讓你的程式直接算錯**。寫 code 之前建議先看一眼。

### 2️⃣ 分清楚「考試怎麼寫」跟「實作怎麼做」

課程錄於 2021 年，有些內容已經過時了（例如當時說 CAM16「還沒成為 CIECAM16」，
現在它已經是 **CIE 248:2022** 了）。所有差異都標明：

> 課堂上說 X；標準是 Y。**考試寫 X，寫程式用 Y。**

### 3️⃣ 教學導向，不是條列式參考書

寫法一律是「**先講這東西在解什麼問題，再給定義**」。
Skill 的回答風格也照這個走 —— 直接把事情講清楚，不繞路、不考你。

---

## ⚠️ 免責聲明

- 這是**學生整理的非官方筆記**，**未經授課教師審閱或背書**。
- 內容依循 **Ming Ronnier Luo（羅明）教授**於 2021 年在**台灣科技大學色彩與照明科技研究所**
  開設的 *Applied Color Science* 密集課程的架構與觀點整理而成。
- **課程錄影、逐字稿、投影片原檔均不隨附，也不會提供。**
- 內容經查證與交叉比對，但**錯誤由整理者負責，與教授本人無關**。發現錯誤歡迎開 issue。

---

## 📂 專案裡有哪些檔案

| 檔案 | 給誰看 | 內容 |
|---|---|---|
| **[`INSTALL.md`](INSTALL.md)** | 所有人 | **完整安裝說明** —— 分平台（Mac/Windows/Linux）、分工具（Claude Code/Codex/Cursor） |
| [`SKILL.md`](SKILL.md) | Claude Code | skill 本體：路由表、答題原則、教學風格 |
| [`AGENTS.md`](AGENTS.md) | **Codex / Cursor / 其他 agent** | 同樣的內容，改成 `AGENTS.md` 格式 |
| [`references/`](references) | 所有人 | **知識庫本身**（20 篇筆記 + 6 份彙整） |
| [`CONTRIBUTING.md`](CONTRIBUTING.md) | 想貢獻的人 | A–H 分類慣例、驗算原則、寫作風格 |
| [`OPEN-QUESTIONS.md`](OPEN-QUESTIONS.md) | 想幫忙的人 | 5 個查不到確定答案的項目 |
| [`PROJECT.md`](PROJECT.md) | 想做同樣事的人 | 製作方法、驗證流程、踩過的坑 |
| [`tools/`](tools) | 有原始素材的人 | 從螢幕錄影抽投影片的腳本 |

---

## 🔧 這份筆記是怎麼做的

[`PROJECT.md`](PROJECT.md) 記錄了整個製作流程、驗證方法，以及踩過的坑。

**如果你想對自己的課做同一件事，那份可以整套搬走** ——
從「怎麼從螢幕錄影抽投影片」到「怎麼用邊界條件驗證一個常數對不對」都有。

---

## 🤝 想幫忙？

筆記裡有幾個地方**查不到確定答案，一律標成「存疑」而不是猜一個寫上去** ——
全部集中在 [`OPEN-QUESTIONS.md`](OPEN-QUESTIONS.md)。
如果你手上有原始文獻能確認任何一項，非常歡迎。

要修正或補充內容，請先看 [`CONTRIBUTING.md`](CONTRIBUTING.md) ——
裡面說明了 **A–H 八類**的分類慣例，以及一個重要原則：
**「課堂講法」與「標準說法」兩個都要保留，不要因為後者才對就刪掉前者。**

---

## 📄 授權

| 部分 | 授權 |
|---|---|
| 筆記的組織、解說、驗算、交叉對照、`tools/` 程式碼 | **CC BY-SA 4.0** |
| 底層的課程內容、教學架構與觀點 | 屬於 **Ming Ronnier Luo 教授**；本專案為學習用途的二次整理，非官方發行 |
| 色彩科學公式、CIE 標準數值 | 事實與公開標準，不主張權利 |

若權利人認為本專案有任何不妥，請開 issue 或直接聯繫，我會立即配合處理。

---

## 🙏 致謝

感謝 **Ming Ronnier Luo（羅明）教授**的授課。

這門課把色彩科學講成一個**從產業需求出發的故事**，而不是一堆公式的集合 ——
他自己就是那個因為「色差公式太多，不知道該用哪個」而跑去做色差研究的人，
後來別人叫他 **"Mr. Colour Difference"**，他說他覺得很榮幸。

這份筆記想保留的，就是那個講法。

---
---

<a name="english"></a>
# English

## What is this?

A **complete colour science / colorimetry knowledge base in Traditional Chinese**,
packaged as a [Claude Code](https://claude.com/claude-code) skill.

Once installed, just ask:

```
"What's the difference between luminance and lightness?"
"Why does CIEDE2000 need a rotation term?"
"If L* = 50, what's Y?"
"Quiz me on colour order systems, I have an exam tomorrow"
```

It explains **what problem a thing solves** before giving you the definition and the formula —
rather than dumping equations on you.

> **Note on language**: the notes themselves are written in **Traditional Chinese**.
> The skill can answer in English if you ask in English, but the source material is Chinese.

**Don't use Claude Code?** Everything under `references/` is plain Markdown —
just read it as a textbook. Start at [`references/README_索引.md`](references/README_索引.md).

---

## Install

Works with **Claude Code**, **Codex**, and anything that reads `AGENTS.md`
(Cursor / Windsurf / Cline).

> **Not sure which one you're using?** [`INSTALL.md`](INSTALL.md) opens with a
> quick decision table, and includes **expected output at each step** plus a
> **troubleshooting section** (execution policy, skill not triggering, encoding…).

### 🟣 Claude Code

| Platform | Command |
|---|---|
| 🍎 **macOS** / 🐧 **Linux** | `curl -fsSL https://raw.githubusercontent.com/Ayueh0102/Ronnier-skill/main/install.sh \| bash` |
| 🪟 **Windows** (PowerShell) | `irm https://raw.githubusercontent.com/Ayueh0102/Ronnier-skill/main/install.ps1 \| iex` |

Then open a **new** session. It loads automatically when you ask a colour science
question, or invoke it with `/luo-ming-color-science`.

### 🟢 Codex

Same script with `--codex` — installs to `~/.colour-science` and registers it in
`~/.codex/AGENTS.md`:

```bash
# macOS / Linux
curl -fsSL https://raw.githubusercontent.com/Ayueh0102/Ronnier-skill/main/install.sh | bash -s -- --codex
```

```bash
# Windows: download first, then run with the flag
irm https://raw.githubusercontent.com/Ayueh0102/Ronnier-skill/main/install.ps1 -OutFile i.ps1 ; .\i.ps1 -Codex
```

### 🔵 Cursor / Windsurf / Cline

Clone into your project, then point your rules file at it:

```bash
git clone --depth 1 https://github.com/Ayueh0102/Ronnier-skill.git .colour-science
```

### 📖 Just reading

Nothing to install — everything under `references/` is plain Markdown.

> **📘 Full instructions (manual install, updating, uninstalling, troubleshooting): [`INSTALL.md`](INSTALL.md)**

**To update**: run the install command again — it detects an existing install and pulls.

---

## What's inside

**20 lecture notes** (~13,000 lines) covering:

- **CIE colorimetry** — measurement geometries, colour matching, XYZ tristimulus values
- **Object optics** — Snell, Fresnel, Lambert–Beer, Kubelka–Munk
- **Instruments & uncertainty** — spectrophotometers, physical standards, MCDM, Type A/B errors
- **Light sources** — colour temperature, D-series, fluorescent, LED
- **Colour vision** — cone/rod structure, opponent theory, colour deficiency
- **Psychophysics** — scale types, Weber/Fechner/Stevens, Thurstone, experimental design
- **Colour order systems** — Munsell, NCS, Ostwald, DIN, OSA-UCS, Coloroid
- **Colour difference** — CIELAB → CMC → CIE94 → **CIEDE2000**, parametric effects, S-CIELAB
- **Metamerism** — the four types, and how to compute the metamerism index properly
- **Colour appearance** — the seven attributes, CIECAM02, CAM16
- **Chromatic adaptation** — the five mechanisms, von Kries, CAT02, colour inconstancy
- **Colour rendering** — CRI, and its successors Rf / Rg / Color Vector Graphic

Plus **6 reference files**: a formula index, a terminology-disambiguation guide,
a "lecture vs. standard" discrepancy table, a glossary, a literature map,
and distilled primary sources.

---

## What makes it different

**Every constant was verified, not copied.**
Where a boundary condition could check a number, it was checked. For example:

```
DIN 6164's darkness-degree constant is printed as 6.1273 in the course material.
But the definition says D is measured from the optimal colour → D must be 0 there.
   6.1273  →  D = 0.0729   ✗
   6.1723  →  D = 0.00003  ✓
   → digits transposed
```

The discrepancy table lists **20 errors found in the source material**,
**five of which will silently break your code** if you copy them.

**It separates "what to write in the exam" from "what to use in production."**
The course was recorded in 2021 and some of it has aged — CAM16 has since become
**CIECAM16 (CIE 248:2022)**, for instance. Every such gap is flagged both ways.

**It teaches, rather than lists.**
Every topic starts with the problem it exists to solve.

---

## ⚠️ Disclaimer

These are **unofficial student notes**, **not reviewed or endorsed** by the instructor.

The content follows the structure and perspective of the *Applied Color Science*
intensive course taught by **Prof. Ming Ronnier Luo** at the Graduate Institute of
Colour and Illumination Technology, National Taiwan University of Science and
Technology, in 2021.

**No lecture recordings, transcripts, or original slides are included or distributed.**

Content has been cross-checked and verified, but **any errors are the compiler's
responsibility, not the instructor's.** Issues and corrections welcome.

---

## 📂 What's in this repo

| File | For whom | What |
|---|---|---|
| **[`INSTALL.md`](INSTALL.md)** | Everyone | **Full install guide** — per-platform (Mac/Windows/Linux), per-tool (Claude Code/Codex/Cursor) |
| [`SKILL.md`](SKILL.md) | Claude Code | The skill itself: routing table, answering principles, teaching style |
| [`AGENTS.md`](AGENTS.md) | **Codex / Cursor / other agents** | Same guidance in `AGENTS.md` format |
| [`references/`](references) | Everyone | **The knowledge base** (20 lecture notes + 6 reference files) |
| [`CONTRIBUTING.md`](CONTRIBUTING.md) | Contributors | Classification convention (A–H), verification principles, style |
| [`OPEN-QUESTIONS.md`](OPEN-QUESTIONS.md) | Contributors | 5 items that could not be confirmed |
| [`PROJECT.md`](PROJECT.md) | Anyone doing the same | Build method, verification pipeline, mistakes made |
| [`tools/`](tools) | Those with source material | Slide-extraction script for screen recordings |

---

## 🔧 How this was built

[`PROJECT.md`](PROJECT.md) documents the whole pipeline — source hierarchy,
verification methodology, and the mistakes made along the way.

**If you want to do the same thing for your own course, that document is reusable
as a method** — from extracting slides out of screen recordings to verifying a
printed constant against a boundary condition.

---

## 🤝 Contributing

A handful of details could not be confirmed against primary sources. Rather than
guess, they were marked as uncertain and collected in
[`OPEN-QUESTIONS.md`](OPEN-QUESTIONS.md). If you can settle any of them, please do.

See [`CONTRIBUTING.md`](CONTRIBUTING.md) for the classification convention (categories
A–H) and one important rule: **both "what was taught" and "what the standard says"
are kept — don't delete the former just because the latter is correct.**

---

## 📄 Licence

| Component | Licence |
|---|---|
| Organisation, explanations, verification, cross-referencing, `tools/` code | **CC BY-SA 4.0** |
| Underlying course content, teaching structure and perspective | Belongs to **Prof. Ming Ronnier Luo**. This is a study-purpose secondary compilation, not an official publication |
| Colour science formulae and CIE standard values | Facts and public standards — no rights asserted |

If any rights holder considers anything here inappropriate, please open an issue
or get in touch and it will be addressed immediately.

---

## 🙏 Acknowledgement

Thanks to **Prof. Ming Ronnier Luo** for the course.

He turned colour science into a story that starts from industrial need rather than
a pile of equations — fittingly, he got into colour difference research in the first
place because *"there were too many colour difference formulae and nobody knew which
one to use."* People call him **"Mr. Colour Difference"**, and he says he's honoured.

That way of telling it is what these notes try to preserve.
