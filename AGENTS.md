# Colour Science Knowledge Base — Agent Instructions

> **這個檔案是給 AI coding agent 讀的**（Codex、Cursor、Windsurf、Cline，或任何讀
> `AGENTS.md` 的工具）。
> **Claude Code 使用者請看 [`SKILL.md`](SKILL.md)** —— 內容相同但格式不同。
>
> **This file is for AI coding agents** (Codex, Cursor, Windsurf, Cline, or anything
> that reads `AGENTS.md`). **Claude Code users: see [`SKILL.md`](SKILL.md)** instead.

---

## 你有什麼 / What you have

這個目錄是一份**色彩科學／色度學的完整知識庫**（繁體中文，約 13,000 行）。
內容依循 Ming Ronnier Luo（羅明）教授在台科大的 *Applied Color Science* 課程整理。

**遇到色彩科學相關的問題時，先讀 `references/` 底下對應的檔案，不要憑記憶回答。**
色彩科學有大量容易記混的常數、單位與名詞 —— 這份知識庫存在的意義就是不要靠記憶。

---

## 什麼時候該讀哪一份 / Routing

| 問題涉及 | 讀這個 |
|---|---|
| **任何公式、常數** | `references/00-formulas.md` |
| **★ 亮度／明度／明亮度、彩度／飽和度／色度、照度 vs 亮度** | `references/00-terminology-traps.md` |
| 中英名詞對照 | `references/00-glossary.md` |
| 課堂講法與標準說法的差異、**教材上的印刷錯誤** | `references/00-differences.md` |
| 原始論文出處、2021 年後的發展 | `references/00-literature.md` |
| CIE 基礎、量測幾何、PRD | `references/L01_*.md` |
| 色匹配、XYZ、色度圖、2°/10° | `references/L02_*.md` |
| 物體光學：Snell、Fresnel、Kubelka–Munk | `references/L03_*.md` |
| 量測儀器、多角度、螢光量測 | `references/L04_*.md` |
| 相機量色、物理標準、不確定度 | `references/L05_*.md` |
| 光源、色溫、D 系列、LED | `references/L06_*.md` |
| 眼睛結構、錐/桿細胞、對立色理論 | `references/L07_*.md` |
| 色覺異常、觀察者差異 | `references/L08_*.md` |
| 心理物理學、Weber/Fechner/Stevens、Thurstone | `references/L09_*.md` |
| 實驗方法與實驗設計 | `references/L10_*.md` |
| 色序系統：Munsell、NCS | `references/L11_*.md` |
| 色序系統：Ostwald、DIN、OSA-UCS、Coloroid | `references/L12_*.md` |
| **色差公式：CIELAB → CMC → CIE94 → CIEDE2000** | `references/L13_*.md` |
| 參數效應、影像色差、CAM02-UCS、S-CIELAB | `references/L14_*.md` |
| 同色異譜與同色異譜指數 | `references/L15_*.md` |
| 色貌屬性（七大屬性、`s = M/Q = C/J`） | `references/L16_*.md` |
| 色貌模型 CIECAM02 / CAM16 | `references/L17_*.md` |
| 色適應機制、色恆常、CII | `references/L18_*.md` |
| 色適應變換 CAT02、演色性 CRI | `references/L19_*.md` |
| Rf / Rg / Color Vector Graphic / TM-30 | `references/L20_*.md` |

完整索引：`references/README_索引.md`

---

## ★★★ 四條必須遵守的原則

### 1. 寫程式之前，先查教材的印刷錯誤

原始教材有 **20 處印刷錯誤**，**其中 5 處照抄會讓程式直接算錯**：

| 錯誤 | 正確 |
|---|---|
| `k = 100 / Σ R(λ)S(λ)ȳ(λ)` | **`k = 100 / Σ S(λ)ȳ(λ)Δλ`**（分母不含樣品反射率 R） |
| Munsell 多項式 `+0.021009V⁴` | **`−0.021009V⁴`** |
| DIN Darkness 常數 `6.1273` | **`6.1723`** |
| `u' = 4X/(X+15Y+3)` | **`u' = 4X/(X+15Y+3Z)`** |
| `s_uv = 13(u*²+v*²)^½` | **`s_uv = 13[(u'−u'ₙ)²+(v'−v'ₙ)²]^½`** |

**實作任何色彩科學公式前，先看一眼 `references/00-differences.md` 的 F 類。**

### 2. 單位不要搞混（這是實作最常見的錯誤）

```
Illuminance 照度   →  lux    （光「打到」表面上）
Luminance   亮度   →  cd/m²  （光從表面「射出來」）
```

**CIEDE2000 的參考條件是 `1000 lux`（照度）；
CIECAM02 的輸入 `L_A` 要 `cd/m²`（亮度）。把 lux 直接餵進 L_A 是錯的。**

粗略換算：`L_A ≈ 照度 × Y% / (100 × π)`

其他容易混的名詞見 `references/00-terminology-traps.md`。

### 3. 「課堂講法」與「標準說法」要分開

同一件事可能有兩個答案，**兩個都是有用的**：

```
考試／複習     →  以課堂教材為準
研究／論文／實作 →  以 CIE 等標準為準
```

回答時**明確標示是哪一個**。差異全部整理在 `references/00-differences.md`（A–H 八類）。

### 4. 課程錄於 2021 年，部分內容已過時

最重要的三項：

| 課堂說法 | 現況 |
|---|---|
| 「CAM16 尚未成為 CIECAM16」 | **已經是了：CIE 248:2022，取代 CIE 159:2004** |
| CAM16 作者含 Hunt、Fairchild | **兩人都不在名單上** |
| CAM02-UCS 是最新的均勻色空間 | 已被 CAM16-UCS 取代，後者又被 Hellwig & Fairchild (2022) 修訂 |

完整清單見 `references/00-differences.md` 的 **E 類**。

---

## 回答風格建議

這份知識庫是**教學導向**寫的，回答時建議照著它的邏輯走：

1. **先講這東西在解什麼問題**（產業痛點、為什麼會有這個東西）
2. 再給精確定義與公式
3. **誠實說出限制**

**不要**在回答裡引用內部編號（例如 `L13_s044`）—— 那是整理時的追溯標記，
對使用者沒有意義。

**能驗算的就當場驗算一次。** 例如給出 `L* = 50 → Y = 18.42` 之後，
回代 `116 × 0.1842^(1/3) − 16 = 50.00` 確認。

---

## 不確定的地方

有 **5 個項目查不到確定答案**，已標明在 `OPEN-QUESTIONS.md`。
**碰到那幾項時要說「這裡不確定」，不要編一個答案。**

其中兩項會影響實作：
- CIEDE2000 三項式改寫的旋轉符號（四項式標準版不受影響）
- S-CIELAB 黃藍通道的 `b₁` 係數

---

## 授權與來源

這是**學生整理的非官方筆記**，未經授課教師審閱。
不含任何課程錄影、逐字稿或投影片原檔。
詳見 [`README.md`](README.md)。
