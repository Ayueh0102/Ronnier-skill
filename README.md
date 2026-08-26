# Applied Color Science — 色彩科學課程學習筆記（Claude Code Skill）

一份**色彩科學／色度學的完整中文學習筆記**，包裝成 [Claude Code](https://claude.com/claude-code) 的 skill。
裝上之後，直接用中文問色彩學的問題就會有人陪你把它講清楚。

```
你：亮度跟明度差在哪？
你：CIEDE2000 為什麼要有旋轉項？
你：L* = 50 的灰，Y 是多少？
你：幫我複習色序系統
```

---

## ⚠️ 先說清楚

- 這是**學生整理的非官方筆記**，**未經授課教師審閱或背書**。
- 內容依循 **Ming Ronnier Luo（羅明）教授**於 2021 年在**台灣科技大學色彩與照明科技研究所**
  開設的 *Applied Color Science* 密集課程的架構與觀點整理而成。
- **課程錄影、逐字稿、投影片原檔均不隨附，也不會提供。** 本專案只有筆記本身。
- 內容經過查證與交叉比對，但**錯誤由整理者負責，與教授本人無關**。
  發現錯誤歡迎開 issue。

---

## 安裝

```bash
git clone https://github.com/Ayueh0102/Ronnier-skill.git ~/.claude/skills/luo-ming-color-science
```

Windows（PowerShell）：

```bash
git clone https://github.com/Ayueh0102/Ronnier-skill.git "$env:USERPROFILE\.claude\skills\luo-ming-color-science"
```

裝好之後開一個新的 Claude Code session，問任何色彩學問題就會自動載入，
也可以打 `/luo-ming-color-science` 手動呼叫。

**不用 Claude Code 也可以看** —— `references/` 底下全部是純 Markdown，直接讀就是一份完整的課程筆記。
建議從 [`references/README_索引.md`](references/README_索引.md) 開始。

---

## 內容

### 課堂筆記（20 篇，約 13,000 行）

| 範圍 | 主題 |
|---|---|
| **L01–L02** | CIE 色度學基礎、量測幾何、色匹配實驗、XYZ 三刺激值 |
| **L03–L05** | 物體光學（Snell／Fresnel／Kubelka–Munk）、量測儀器、不確定度、同色異譜 |
| **L06** | 光源與色溫、D 系列、螢光燈、LED |
| **L07–L08** | 眼睛結構、對立色理論、色覺異常、觀察者差異 |
| **L09–L10** | 心理物理學：四種尺度、Weber／Fechner／Stevens、Thurstone、實驗設計 |
| **L11–L12** | 色序系統：Munsell、NCS、Ostwald、DIN、OSA-UCS、Coloroid |
| **L13–L14** | 色差公式：CIELAB → CMC → CIE94 → **CIEDE2000**；參數效應、影像色差、S-CIELAB |
| **L15** | 同色異譜與同色異譜指數 |
| **L16–L17** | 色貌：七大屬性、CIECAM02／CAM16、跨媒體複製 |
| **L18–L19** | 色適應機制、色恆常、CAT02、演色性 CRI |
| **L20** | 演色性新指標：Rf／Rg／Color Vector Graphic（課程之後的發展） |

### 彙整檔

| 檔案 | 內容 |
|---|---|
| [`00-terminology-traps.md`](references/00-terminology-traps.md) | **★ 名詞辨異** —— 亮度／明度／明亮度、彩度／飽和度／色度、照度 vs 亮度。**中文學色彩學最容易卡住的地方** |
| [`00-formulas.md`](references/00-formulas.md) | 全課公式速查，14 大類 |
| [`00-differences.md`](references/00-differences.md) | 「課堂講法 vs 標準說法」，A–H 八類 |
| [`00-glossary.md`](references/00-glossary.md) | 中英名詞對照 + 轉錄勘誤表 |
| [`00-literature.md`](references/00-literature.md) | 原始論文出處、2021 課後的新發展 |
| [`00-primary-sources.md`](references/00-primary-sources.md) | 原始論文的蒸餾 |

---

## 這份筆記的幾個特點

**① 分清楚「課堂講法」與「標準說法」**
課程錄於 2021 年，有些內容已經過時（例如 CAM16 當時「尚未成為 CIECAM16」，
現在已經是 **CIE 248:2022**）。所有差異都整理在 `00-differences.md`，分八類，
並標明**考試該寫哪個、實作該用哪個**。

**② 數字都驗算過**
凡是公式裡的常數，能用邊界條件驗的都驗過。例如：

```
DIN 6164 的 Darkness Degree 常數應為 6.1723 而非 6.1273
   → 因為「最佳色的 D 必須等於 0」，只有 6.1723 成立
```

`00-differences.md` 的 F 類列出了教材上的印刷錯誤，
其中**五個會讓程式直接算錯**，實作前建議先看一眼。

**③ 教學導向，不是條列式參考書**
筆記的寫法是「先講這東西在解什麼問題，再給定義」。
Skill 的回答風格也照這個走 —— 直接把事情講清楚，不繞路、不考試。

---

## 給想自己重建的人

`tools/` 底下有從課程錄影抽出投影片畫面的腳本。
**請自行確認你有權使用你手上的素材。** 用之前先讀 [`tools/README.md`](tools/README.md)。

---

## 授權

| 部分 | 授權 |
|---|---|
| **筆記的組織、解說、驗算、交叉對照、`tools/` 的程式碼** | **CC BY-SA 4.0**（整理者的著作） |
| **底層的課程內容、教學架構與觀點** | 屬於 **Ming Ronnier Luo 教授**。本專案為學習用途的二次整理，非官方發行 |
| **色彩科學的公式、標準數值、CIE 規格** | 事實與公開標準，不主張任何權利 |

若權利人認為本專案有任何不妥，請開 issue 或直接聯繫，我會立即配合處理。

---

## 致謝

感謝 **Ming Ronnier Luo（羅明）教授**的授課。
這門課把色彩科學講成一個從產業需求出發的故事，而不是一堆公式的集合 ——
這份筆記想保留的就是那個講法。
