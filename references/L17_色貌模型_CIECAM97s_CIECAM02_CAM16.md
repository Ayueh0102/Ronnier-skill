# L17｜Lecture 10：色貌模型（Colour Appearance Models）
**來源**：`2021-11-07 09-09-22.mp4`（00:00–01:02:07）｜Day 4 上午第二節
**★ 這是羅明教授親手參與制定的國際標準，他是 CIECAM97s 與 CIECAM02 的共同作者。**

---

## 1. 色貌模型的發展史（00:00–00:02:00）

**★★★ 投影片 `L17_s001_000m00s.png`（＝`L16_s025`）「3. Colour Appearance Model (CAM)」逐字**
```
- Hunt 1994 and Hunt 1996 ★ (Hunt & Luo)
- Nayatani 1997 (Osaka, Japan)
- RLAB 1996 (RIT, USA)
- LLAB 1996 ★ (CII, UK)
- CIECAM97s ★ (Hunt & Luo)
- CIECAM02 ★ (Moroney, Fairchild, Hunt, Li, Luo and Newman)
```
> ### ★★★ 把括號裡的機構/人名圈起來，會看到一件事：**六個模型裡老師參與了四個**
> ```
> Hunt 1994/1996   →  (Hunt & Luo)          ★ 有他
> Nayatani 1997    →  (Osaka, Japan)          —
> RLAB 1996        →  (RIT, USA)              —
> LLAB 1996        →  (★ CII, UK)           ★ CII = Colour and Imaging Institute,
>                                              University of Derby —— 他自己創辦的研究所
> CIECAM97s        →  (Hunt & Luo)          ★ 有他
> CIECAM02         →  (Moroney, Fairchild, Hunt, ★ Li, ★ Luo, Newman)
> ```
> **★ `LLAB` 的兩個 L**：老師課堂上說「你可以猜猜 L 是什麼」——**`Luo` 與 `Lo`**（他的學生 M.-C. Lo）。
>
> **★ CIECAM02 的六位作者代表六個陣營**：
> **Moroney（HP）、Fairchild（RIT → RLAB）、Hunt（Hunt model）、Li（浙大）、Luo（Derby → LLAB）、Newman（產業）。**
> **等於把前面幾個競爭模型的作者全部拉進同一個委員會，共同交出一個。**
> —— 這和 L13 的 **TC 1-47**（把 CMC / CIE94 / BFD / LCD 的人湊在一起做 CIEDE2000）是**完全相同的做法**。
> **★ 這是 CIE 解決「模型太多」的標準手法：不是選一個，是把所有人關進同一個委員會。**
> （對照 L12 的色序系統 —— 那次因為綁著實體樣本與國家標準，這招用不了。）

| 年份 | 模型 | 作者 / 機構 |
|---|---|---|
| **1994 / 1996** | **Hunt 模型** | **Robert W. G. Hunt（"Bob Hunt"）**——老師稱他為 **色彩科學的宗師（master of colour science）**，兩人合作了 **15–20 年** |
| — | **Nayatani 模型** | 日本（大阪） |
| **1996** | **RLAB** | **RIT（Rochester Institute of Technology）, USA** |
| — | **LLAB** | **老師自己的模型**（「你可以猜猜 L 是什麼」= **Luo**），**CII, University of Derby, UK** |
| **1997** | **★ CIECAM97s** | **Hunt & Luo**，**被 CIE 正式採用**（s = simple） |
| **2002** | **★★ CIECAM02** | **真正可用的工作模型**，**19 年後（2021）仍在使用** |
| **2016** | **CAM16** | **Li C., Li Z., Wang Z., Xu Y., Luo M.R., Cui G., Melgosa M., Brill M.H., Pointer M.**（★ **Hunt 與 Fairchild 不在作者名單上**）。課堂上說「尚未正式成為 CIECAM16」 |
| **2022** | **★★ CIECAM16 = CIE 248:2022** | **⚠️ 課後更新：CAM16 已正式標準化為 CIECAM16，取代 CIE 159:2004（CIECAM02）**。詳見 `00-literature.md` E1 |

---

## 2. 為什麼是 1992 年？（00:01:57–00:04:31）

> **「1992 年是數位時代的開端。
> 在那之前，電腦螢幕是黑白的，我們很少用電腦做實務工作；
> 彩色電視是笨重的映像管。
> **從 1992 年開始，一切變化極快——彩色印刷數位化了。」**

**產業的集體需求**：Apple、Samsung、印刷公司（**Fogra**、**Fuji**）……**所有人都要做跨媒體色彩複製**。

**★ 而他們遇到的牆（00:04:01）**：
> **「我在螢幕上做出 XYZ，印刷品上也做出完全一樣的 XYZ——
> 量出來是完美的色匹配，但**視覺上我們不認為它們相配**。
> 為什麼？**這就是同色異譜。**
> 跨媒體色彩複製失敗了。
> 所以人們才開始問：**我們能不能要一個色貌模型？**」**

---

## 3. ★★ 色貌模型的定義與 CIE 的最低要求（00:04:31–00:05:29）

**定義**：
> **「一個能夠預測『在不同觀看條件下之色貌』的色視覺模型。」**
> A model of colour vision capable of predicting colour appearance under different viewing conditions.

**★ CIE TC 1-34 的最低要求（必考）—— 投影片 `L17_s003_002m06s.png` 逐字**
```
· A model of colour vision capable of predicting colour appearance
  under different viewing conditions.

· CIE TC 1-34 (1992)
   – To be considered to be a colour appearance model, a model must
     account for ★ AT LEAST chromatic adaptation and have correlates
     of ★ AT LEAST lightness, chroma and hue.
```
> **一個模型要被視為色貌模型，至少必須：**
> **① 能處理色適應（chromatic adaptation）**
> **② 具有 lightness、chroma、hue 三個相關量（correlates）**
>
> ### ★★ 這個「最低要求」有兩個必須看出來的細節
> **① 兩個 `at least` —— 這是「門檻」不是「規格」。**
> 只要有色適應 + 三個相關量就算數；**CIECAM02 給了七個屬性，是遠遠超標。**
>
> **② ★ 為什麼指定的是「lightness, chroma, hue」這三個，而不是別的三個？**
> 因為這三個**恰好是「相對量」那一組**（見 L16 §3-3）：
> ```
> J（明度）  = Q / Q_w      ← 相對
> C（彩度）  = M / Q_w      ← 相對
> h/H（色相）              ← 本來就與亮度無關
> ```
> **相對量才能跨觀看條件比較**（絕對量 Q、M 會隨照明亮度漂移）。
> **→ CIE 挑的是「換條件後仍然可比」的那三個。這不是隨便挑的。**
> **★ 而且這三個剛好就是 Munsell 的 `V / C / H`** —— **色貌模型的最低要求，
> 等於「至少要能算出 Munsell 那三個軸」。** 這條線把 L11 一路接到 L17。

---

## 4. CIE 的推進時間軸（00:05:29–00:08:28）

**投影片 `L17_s004_005m45s.png`「Development of Colour Appearance Models」逐字（五個里程碑）：**
```
- CIE TC1-34  Testing colour appearance models, ★ 1992
- CIE Expert Symposium  '96 Color Standards for Imaging Technology, ★ Vienna 1996
- CIE TC1-34 Meeting, ★ CIECAM97s, Kyoto, 1997
- CIE TC8-01  Colour Appearance Modelling for Colour Management Applications,
  ★ Baltimore 1998
- ★ CIECAM02, Color Imaging Conference 2002, Scottsdale, Arizona, USA
```

| 年份 | 地點 | 事件 |
|---|---|---|
| **1992** | — | **CIE TC 1-34 成立**（Division 1 = 色度學），任務名稱：**`Testing colour appearance models`** |
| **1996** | **維也納 Vienna** | **CIE Expert Symposium '96：Colour Standards for Imaging Technology**（★ 老師形容：**150 個人擠在一間很小的房間裡**，Apple、Unix 廠商、Microsoft 全都在喊：「CIE，快給我們一個模型！」）→ **Bob Hunt 與羅明接下這個責任** |
| **1997** | **京都 Kyoto** | **CIECAM97s 在 TC 1-34 會議上問世**（學術模型，還不知道對影像有多有效） |
| **1998** | **巴爾的摩 Baltimore** | **TC 8-01 成立**（Division 8 = 影像技術），任務：**`Colour Appearance Modelling for Colour Management Applications`** |
| **2002** | **Scottsdale, Arizona** | **CIECAM02 於 CIC（Color Imaging Conference）定案** |
| **2016** | — | **CAM16** |

> **老師的評語：「CIE 在那個階段非常有效率。」**
>
> ### ★★★ 一個很值得記住的巧合：**1998 年的 Baltimore**
> ```
> L13 投影片 s042：「CIE TC1-47 was established at ★ Baltimore, 1998」  ← 色差（CIEDE2000）
> L17 投影片 s004：「CIE TC8-01 …, ★ Baltimore 1998」                   ← 色貌（CAM）
> ```
> **同一年、同一個城市，CIE 同時啟動了「色差統一」與「色貌管理」兩條線。**
> 三年後（2001）交出 **CIEDE2000**，四年後（2002）交出 **CIECAM02**。
> **→ 這是老師三階段框架裡「第 ② 站與第 ③ 站」的共同起跑點，答申論題時是很漂亮的一筆。**

---

## 5. ★★ 觀看條件的定義（00:08:28–00:11:34）

模型使用時必須指定的條件：

**★★★ 投影片 `L17_s005 / s007`「Condition of viewing」的圖 —— 五個標註，全部要認得**
```
                         💡  Light source（光源）
                        ╱  ╲
      Surround ←──  ╱ ─────── ╲  ──→ 照射範圍
              ┌───────────────────────┐
              │                       │
              │      ▢ ←─────────────── Ref. white（參考白）
              │                       │
              │      ▧ ←─────────────── Test colour（測試色）
              │                       │
              │        ↑               │
              └────────┼──────────────┘
                  Background（背景 = 色塊周圍那片灰）
         Surround（周圍 = 整張卡以外的環境）
```
| 標註 | 是什麼 | CIECAM02 的哪個參數 |
|---|---|---|
| **Light source** | 光源 | 決定 **X_w Y_w Z_w**（白點） |
| **Ref. white** | 一塊參考白色塊，**永遠 J = 100** | **X_w Y_w Z_w** 的實體 |
| **Test colour** | 要判斷的那個顏色 | **X Y Z**（輸入） |
| **Background** | **色塊「周圍那一小圈」** | **Y_b** |
| **Surround** | **整個視野以外的環境** | **Average / Dim / Dark** |

> ### ★★ Background 與 Surround 最常被搞混，用這張圖記
> ```
> Background = 緊貼著色塊的那一圈（灰卡）        → 給一個數字 Y_b
> Surround   = 灰卡以外的整個房間                → 給一個類別 Average/Dim/Dark
> ```
> **一個是「局部」、一個是「全域」；一個是連續量、一個是三選一。**
> **★ 記憶法**：**Background 是色塊的「鄰居」，Surround 是色塊的「城市」。**
>
> **★ 而 `Ref. white` 是第三個東西**，別跟 background 混：
> **背景通常是中性灰（Y_b ≈ 20），參考白是全白（Y = 100）。**
> 兩者都在圖裡，但角色完全不同：**背景影響對比，參考白定義「100 分在哪」。**

```
            ┌─────────── Surround 周圍 ───────────┐
            │  ┌──── Background 背景 ────┐        │
            │  │      ┌─────────┐        │        │
            │  │      │ 測試色  │        │        │
            │  │      └─────────┘        │        │
            │  └────────────────────────┘        │
            └────────────────────────────────────┘
```

| 參數 | 說明 |
|---|---|
| **Background 背景** | **目前只考慮中性背景**（灰、黑、白）。**白背景 → 顏色看起來變暗；黑背景 → 顏色看起來變亮** → **同時對比效應（simultaneous contrast effect）** |
| **Light source 光源** | 照明體 A、3000K、4000K、5000K… |
| **Reference white 參考白** | **永遠定義 lightness = 100** |
| **★ Surround 周圍** | **Average 一般**（辦公室）／**Dim 昏暗**（在家開小燈看電視）／**Dark 全暗**（電影院） |
| **Luminance level 亮度水準** | 1000 lux、10000 lux… |

> **老師的記憶法：「你去電影院看電影，畫面之外的那一圈就是 surround。電影院是全黑的 → dark surround。」**

---

## 6. ★★★ CIECAM02 的輸入與輸出（00:11:34–00:15:05）

### 6-1 輸入
| 符號 | 意義 | 單位／典型值 |
|---|---|---|
| **X, Y, Z** | 樣品（影像的一個像素） | — |
| **Xw, Yw, Zw** | **參考白** | **Yw = 100** |
| **L_A** | **適應亮度** | **cd/m²（nits）** |
| **Y_b** | **背景的亮度因數** | **中灰約 20（= 18% 灰卡），相當於 L\* ≈ 50** |
| **Surround** | average / dim / dark | — |

**★★ 老師花整段時間強調「單位」（00:13:38）——他明說「考試題目一定會考」**：
```
L    = luminance 亮度      → 單位 cd/m²（有人叫 nits）
Y    = luminance factor 亮度因數 → Y = 100 代表白
Y_w  = 參考白的亮度因數    → 一律等於 100
Y_b  = 背景的亮度因數      → 中灰約 20（0.18），相當於 L* = 50
L*   = lightness 明度      → CIELAB 的明度
```
> **「單位非常重要。一旦你把單位搞混，你永遠不可能正確實作出色貌模型。」**

**實務上怎麼取參考白（00:12:38）**：
> 在複雜畫面中，用儀器**去量畫面裡的白**（例如印刷色卡左下角的白），
> 得到 **Xw Yw Zw**，同時得到**它有多亮（cd/m²）**，再乘上 **Y_b** 得到背景亮度。

### 6-2 輸出（七個色貌屬性）
| 類別 | 屬性 |
|---|---|
| **絕對屬性** | **Q Brightness 明亮度**、**M Colourfulness 鮮豔度** |
| **相對屬性** | **J Lightness 明度**、**C Chroma 彩度** |
| **二維尺度** | **s Saturation 飽和度** |
| **色相** | **h Hue angle 色相角（0–360°）**、**H Hue composition 色相組成** |

---

## 7. ★★★ 模型的內部結構（00:15:05–00:19:20）—— 這張流程圖要會畫

```
輸入： XYZ ,  XwYwZw ,  L_A ,  Y_b ,  Surround
   │
   ▼
【第一階段】色適應 Chromatic Adaptation（CAT02 / CAT16）
   XYZ  →  RGB（錐細胞反應，即 L07 的 ρ γ β）
   依白點與適應程度，對 R、G、B 各自套用增益
   │
   ▼
【第二階段】動態（非線性）反應壓縮 Dynamic Response
   RGB  →  Ra, Ga, Ba   （視亮度高低而不同的壓縮）
   │
   ▼
【第三階段】對立通道 Opponent Signals
   a = 紅-綠      b = 黃-藍      A = 無彩訊號（achromatic）
   │
   ▼
【第四階段】計算色貌屬性
   A          →  J（明度）、Q（明亮度）
   a, b       →  h（色相角）、H（色相組成）
   J/Q + h + 背景/周圍  →  C（彩度）、M（鮮豔度）、s（飽和度）
```

> **★ 這個結構與 L07「色視覺」那一節完全對應：
> 錐細胞 → 適應 → 對立通道 → 知覺屬性。
> 色貌模型不是曲線擬合，它是照著視覺系統的解剖結構蓋出來的。**

**Chromatic Adaptation 的定義（00:15:40）**：
> **「兩個顏色在『從一個光源換到另一個光源』後仍有相同的外觀」→ 這就是色適應，
> 而這兩組 XYZ 就叫做『對應色（corresponding colours）』。」**

**★ 兩種色空間的分工（00:18:50）**：
```
Uniform Colour Space  →  算色差  →  用 hue angle (h)
Colour Appearance Space →  描述色貌 →  用 hue composition (H)
```

---

## 8. 色貌模型怎麼驗證（00:19:20–00:30:37）

### 8-1 兩類實驗資料（對應 L16 講的三種方法）

**(A) 對應色資料（Corresponding Colour Data）**——來自**分眼匹配**與**記憶匹配**

| 資料集 | 來源 | 條件 |
|---|---|---|
| **CSAJ** | 日本色彩學會（Colour Science Association of Japan） | 小視野 |
| **McCann** | 美國 | |
| **Breneman** | **Kodak, USA** | |
| **Fairchild** | 美國（RIT） | |
| **Helson** | **記憶匹配**，用 **Munsell 座標** | 表面色、簡單場 |
| **Lam & Rigg** | **Bradford**（Rigg 是老師的指導教授） | **大視野**、表面色、複雜場 |
| **Kuo & Luo / LUTCHI** | **老師團隊**，用 **magnitude estimation** | 表面色、螢幕、透射片；簡單場 |

**★ 投影片 `L17_s016_021m29s.png`「Two Categories of Colour Appearance Data」逐字**
```
· Corresponding Colour (★ 8 Sources)
   – CSAJ, Breneman, McCann, Fairchild, Lam & Rigg, Helson et al,
     Kuo & Luo, LUTCHI.

· Magnitude Estimation (★ 4 Sources)
   – Luo et al 1991, 1993a, 1993b and 1995
```
> **★★ 注意第二類「四個來源」全部是 `Luo et al`** —— **量值估計這一整類資料，就是老師團隊一家做的。**
> 這就是為什麼 **LUTCHI 被稱為他最重要的學術遺產**：
> **CIECAM97s / CIECAM02 有一半的證據基礎是他實驗室產出的。**

**★★★ 規模（投影片 `L17_s017_022m56s.png` 標題）**
```
Corresponding Data Sets:  ★ 14 Groups - 30 Phases - 690 Colours
```
**參考條件通常是 D65**；測試條件有 **A、TL84、白色螢光燈、紅光、黃光、綠光、藍光**。
**照度範圍極廣：從 `1.3` 到 `38,750` lux**（Breneman 的透射片資料到 38750）。

**(B) 量值估計資料（Magnitude Estimation Data）**——老師團隊的資料
**★★★ 規模（投影片 `L17_s018_023m58s.png` 標題）**
```
Magnitude Estimation Data sets:  ★ 7 Groups - 48 Phases - 4945 Colours
```
| 組 | Phase 數 | 顏色數 | 照明體 | 照度 (lux) | 背景 Y% | 媒材 |
|---|---|---|---|---|---|---|
| **R-HL**（反射・高亮度） | 6 | 630 | D65 D50 WF A | **780** | 100, 20, 6 | R |
| **R-LL**（反射・低亮度） | 6 | 630 | D65 D50 WF A | **130** | 100, 20, 6 | R |
| **R-VL**（反射・極低亮度） | 6 | 480 | D50 | **1.3 – 2600** | 20 | R |
| **K & L** | 3 | 718 | D65, TL84, A | 1000 – 2300 | 12 | R |
| **Monitor** | 11 | **994** | D65 D50 WF A | 63 – 140 | 100, 20, 6 | **M** |
| **Cut-sheet** | 10 | 966 | D50 | 1000 – 6600 | 10, 17 | **T** |
| **35 mm** | 6 | 527 | **Xenon A** | 140 – 350 | 20 | **T** |

- 輸出是 **lightness / colourfulness / hue**，**不是 XYZ** → 必須用**不同的方式評估**
- **★ 媒材代號**：**R = Reflection（反射，印刷/紡織）**、**M = Monitor（螢幕）**、**T = Transparency（透射片）**
- **背景明確涵蓋三級**：黑（Y ≈ 6）、中灰（Y ≈ 20）、白（Y = 100）

> ### ★★★ 兩類資料的規模對比 —— 這一組數字很值得記
> ```
> 對應色資料      ：14 組 · 30 phases · ★   690 個顏色
> 量值估計資料    ： 7 組 · 48 phases · ★ 4,945 個顏色     ← 大 7 倍
> ```
> **★ 為什麼差這麼多？** 因為**對應色實驗（分眼匹配）極慢極貴**
> —— 一次只能做一個顏色、要專用光學設備、還有雙眼競爭問題（L16 §2-1）；
> 而**量值估計只要人看著色塊報三個數字，可以大量做**（L16 §2-3 的「唯一缺點是精度低」）。
>
> **★★ 這正是 L16 那張優缺點對比表的實際後果**：
> **「精度低但可以大量做」的方法，最後累積出 7 倍的資料量，
> 而資料量本身就補回了精度**（隨機誤差隨 √N 下降）。
> **→ 這是實驗設計上的一個重要教訓：單次精度不是全部，總體資訊量才是。**
>
> **⚠️ 但也要看到限制**：**整個 CIECAM97s/02 的對應色證據只有 690 個顏色。**
> 這就是文末出入第 7 條「對應色資料集的規模是這個領域的瓶頸」的具體數字。

### 8-2 評估方法（投影片 `L17_s020_025m21s.png`「Testing Methods」逐字）
```
· Corresponding Colour
     ★ CMC(1:1) ΔE between the M(D) and P(D)
     [圖：三角形，三個頂點標 P(D)、M(D)、M(A)]

· Magnitude Estimation
                    ┌─────────────────
                    │  Σ (V_i − P_i)²
     ★ CV = 100 ·  │ ───────────────      ÷  V̄
                   ╲│        N
     [圖：V 對 P 的散布圖與 45° 線]
```
| 資料類型 | 評估方式 | ★ 用什麼指標 |
|---|---|---|
| **對應色資料** | 模型從 A 預測到 D65 → 比對「預測點 P(D)」與「實測點 M(D)」 | **CMC(1:1) 的 ΔE** |
| **量值估計資料** | 預測值 P 對視覺值 V 作圖 | **CV = 100 × RMS 誤差 ÷ 平均值** |

> **★ 符號解讀（三角形圖）**：
> ```
> M(A)  = 在照明體 A 下「量到（Measured）」的顏色      ← 起點
> P(D)  = 模型「預測（Predicted）」它在 D 下會變成什麼  ← 模型的答案
> M(D)  = 實驗實際「量到」它在 D 下的樣子              ← 正確答案
> 誤差  = P(D) 與 M(D) 之間的 CMC(1:1) 色差            ← 完美時 = 0
> ```
> **★★ 注意評估色貌模型用的是「色差公式」** —— **第 ③ 站要用第 ② 站的工具來打分。**
> 這就是老師三階段框架不是三個獨立主題、而是**層層堆疊**的證據：
> **沒有可靠的色差公式，就沒辦法客觀評價色貌模型。**
> **（並且他選的是 `CMC(1:1)`，即「感知性」版本，不是產業的 2:1 可接受性版本 —— 因為這是科學評估，不是品管。）**
>
> **★ `CV` 的定義與 L14 §8-4 那張表的 `CV = 100 × stdv/mean` 是同一個東西**，
> 只是這裡分子寫成「預測與視覺的均方根差」。**越小越好。**

### 8-3 結果
- **對應色資料**：**CIECAM97s 表現最好**（優於 CIE94、RLAB、Nayatani）→ 這是 CIE 在 1997 年選它的理由
- **量值估計資料**：**Hunt94、Hunt96、LLAB、CAM97s 都優於 RLAB 與 Nayatani**
- **色相預測**：CIECAM97s 的色相結果**與 CIECAM02、CAM16 完全相同**

---

## 9. ★★ 為什麼要從 CIECAM97s 改成 CIECAM02——三個具體缺陷（00:30:37–00:35:03）

| # | CIECAM97s 的問題 | 為什麼不能接受 | CIECAM02 的修正 |
|---|---|---|---|
| **1** | **黑色的 lightness 不等於 0** | **做影像處理時，白必須映到 100、黑必須映到 0** | 修正到 0 |
| **2** | **近中性色的 chroma 不等於 0**（誤差 > 1，「高度不滿意」） | **CIELAB 一定會歸零**，色貌模型不能比它差 | 修正到接近 0，且**離散度小很多** |
| **3** | **★ 亮度改變時 saturation 不該變，但 CAM97s 變化很大**（尤其在 2 cd/m² 這種極低亮度） | **理論要求**：亮度↑ → M↑ 且 Q↑ → **s = M/Q 應該保持不變** | **CIECAM02 是平的** |

### ★★★ 投影片其實給了「四張」`Drawbacks of the CIECAM97s`（`L17_s026 / s027 / s028 / s029`）
| 投影片 | 圖上畫了什麼 | 對應缺陷 |
|---|---|---|
| **`s026`** | 兩張 `Predicted Lightness vs Y` 曲線：**左圖（97s）在原點附近被畫了一個紅圈**，**右圖（02）同一位置畫綠圈** | **① 黑點的 J 不等於 0**（紅圈 = 壞、綠圈 = 修好） |
| **`s027`** | 三張 `Chroma vs Munsell C`：**CIECAM97s / CIELAB / CIECAM02** 並排 | **② 彩度尺度與 Munsell 不成線性**（拿 CIELAB 當中間的對照組） |
| **`s028`** | 兩張 `Saturation vs Visual Saturation` 散布圖，底下標**`CIECAM97s (CV=44)　CIECAM02 (CV=22)`** | **③ 飽和度預測很差 → ★ CV 從 44 砍到 22，剛好一半** |
| **`s029`** | 兩張 `Predicted Lightness vs Y`，分別在 **`L_A = 2 cd/m²`** 與 **`L_A = 2000 cd/m²`**：<br>**左圖單調上升；★ 右圖「先升後降」** | **④ 高亮度下 J 對 Y 不再單調** ——**越亮反而預測越暗**，這是硬傷 |

> ### ★★★★ 第 ④ 個缺陷（`s029`）是四個裡最嚴重的，值得單獨記
> **`L_A = 2000 cd/m²` 時，CIECAM97s 預測的明度曲線會「先升後降」。**
> **意思是：物理上更亮的樣品，模型卻說它更暗。**
> ```
> 單調性（monotonicity）是明度函數最基本的要求 ——
> 連「A 比 B 亮」這種最基本的判斷都會答錯的模型，不可能拿去做影像處理。
> ```
> **★ 而 2000 cd/m² 不是極端值** —— 那是**戶外陽光下、或現代 HDR 顯示器**的常見亮度。
> **CIECAM97s 在 1997 年沒問題，是因為當時沒有那麼亮的顯示器。**
> **→ 這是「模型被時代淘汰」的典型案例，和老師講 CAM16 修 CIECAM02 的理由是同一類問題
> （L17 出入第 3 條：CAM16 修的也是「明度計算會壞掉」）。**
>
> **★★ 三代模型的失效模式驚人地相似：**
> ```
> CIECAM97s → 高 L_A 時 J 非單調
> CIECAM02  → A 可能為負，(負)^(非整數 cz) 早期終止      ← CAM16 修的
> CAM16     → Q 與 J 的非線性關係有問題                   ← Hellwig & Fairchild 2022 修的
> ```
> **三次都出在「明度（lightness / brightness）那一支」。** 這不是巧合 ——
> **明度方程式是整個模型裡唯一同時吃「絕對亮度」與「相對白點」的地方，最容易在極端條件下爆掉。**

### ★★★★ 但是 —— CIECAM02 在色貌預測上並沒有全面贏過 CIECAM97s（投影片 `s034 / s036 / s037`）
```
Lightness Performance (CV)      CIECAM97s ★13.53  vs  CIECAM02  13.65   [★ 97s 贏 6 out of 10]
Hue Performance (CV)            CIECAM97s  7.41   vs  CIECAM02 ★ 6.91   [★ 02 贏 10 out of 10]
Colourfulness Performance (CV)  CIECAM97s ★18.23  vs  CIECAM02  19.16   [97s 贏 5 out of 10]
（以上為 weighted mean，CV 越小越好）
```
| 屬性 | 誰比較好 | 差距 | 勝場 |
|---|---|---|---|
| **Lightness** | **CIECAM97s**（13.53 < 13.65） | **0.12 —— 幾乎相同** | 97s 6/10 |
| **Hue** | **★ CIECAM02**（6.91 < 7.41） | **0.50 —— 唯一明顯的勝出** | **02 贏 10/10** |
| **Colourfulness** | **CIECAM97s**（18.23 < 19.16） | 0.93 | 97s 5/10（平手） |

> ### ★★★★ 那 CIE 為什麼還是換掉 CIECAM97s？—— 這題非常適合當申論題
> **答案：不是因為「更準」，是因為「不會壞」與「更簡單」。**
> ```
> 平均準確度：兩者幾乎相同（甚至 97s 在明度、鮮豔度上還微幅領先）
> 但 CIECAM97s 有四個結構性缺陷（s026–s029），其中一個會讓 J 非單調
> → 在極端條件下會給出「明顯錯誤」而不是「稍微不準」的答案
> ```
> **★ 統計上的平均表現與工程上的可靠性是兩回事。**
> **一個平均誤差小、但偶爾會災難性失效的模型，比不上一個平均誤差略大、但永不失效的模型。**
> （呼應 L14「平均會掩蓋災難」與 L11 的 NCS 品管規格用「百分位 + 門檻」而非平均。）
>
> ### ★★★ 而且這個模式在 CAM16 又重演了一次
> **CAM16 論文的結論也是「效能與 CIECAM02 相當（statistically equivalent），但更簡單、更穩健」。**
> ```
> CIECAM97s → CIECAM02 ：效能相當，修掉四個缺陷 + 簡化
> CIECAM02  → CAM16    ：效能相當，修掉負值當機 + 簡化（去掉 CAT02 的矩陣求逆問題）
> ```
> **★★ 「CIE 換模型的理由從來不是準確度，而是穩健性與簡潔性」——這是本課最反直覺、也最值得寫進答案的一句話。**

### ★★ 各模型與「視覺精度」的比較（投影片 `L17_s022 – s025`）
四張長條圖，每張都畫了一條**橫向的黃線標註 `Visual precision`**：
| 投影片 | 比較的屬性 | 視覺精度線 | 表現最差的模型 |
|---|---|---|---|
| `s022` | **10 組 CAT 資料的 CMC ΔE** | ≈ 4.3 | Nayatani |
| `s023` | **Lightness (CV)** | ≈ 13 | **Nayatani97 ≈ 21、RLAB94 ≈ 20** |
| `s024` | **Colourfulness (CV)** | ≈ 21 | **Nayatani97 ≈ 42（差一倍）** |
| `s025` | **Hue (CV)** | ≈ 8 | **Nayatani97 ≈ 14** |

> ### ★★★ `Visual precision`（視覺精度線）是這四張圖最重要的東西
> **它代表「重複做同一個視覺實驗，人自己的答案會有多少變異」。**
> ```
> 模型誤差 > 視覺精度  →  模型還不夠好，有改進空間
> 模型誤差 ≈ 視覺精度  →  ★ 模型已經和「人自己的一致性」一樣好了 —— 到頂了
> 模型誤差 < 視覺精度  →  可能是過度配適（overfitting），沒有意義
> ```
> **★★ 這是評估任何心理物理模型的黃金準則：不要跟 0 比，要跟「人自己的重複性」比。**
> 呼應 L05 的不確定度觀念與 L14 的 Ring test（`R² = 0.68` 的跨實驗室分歧）——
> **視覺資料本身就有雜訊，模型不可能比雜訊更準。**
>
> **★ 圖上的結論**：`Hunt94 / Hunt96 / LLAB96 / CIECAM97s` 這一家族**都落在視覺精度線上或以下**，
> 而 **`Nayatani97` 與 `RLAB94` 明顯高出線外** —— **這就是 CIE 1997 年選擇 Hunt&Luo 路線的實證理由。**

### ★★ 補充：論文角度的「結構性」改變（2026-08-26 由 Moroney et al. 2002 原文補上）
老師講的是**經驗上的三個缺陷**（上表）；論文摘要列的是**結構上改了什麼**，兩者互補：

1. **★ 線性的色適應變換（linear chromatic adaptation transform）**
   → **也就是說 CIECAM97s 的 CAT 是「非線性」的，CIECAM02 把它線性化了**
2. **新的非線性反應壓縮函數**
3. 修改各感知屬性相關量的計算式
4. 若干簡化

**設計時四個彼此衝突的目標**（論文原文）：
> **向下相容 CIECAM97s、預測效能、計算複雜度、★ 可逆性（invertibility）**

> **★ 為什麼可逆性是硬需求**：跨媒體工作流程要「正向 CAM → 色域映射 → **反向** CAM」（見 §12）。
> **模型若不可逆，整條工作流程就不成立。**

> **★ 第 3 點是最漂亮的一個論證，把 L16 的公式直接變成模型的驗收標準：**
> ```
> 亮度提高時：
>   Brightness Q     ↑
>   Colourfulness M  ↑
>   Lightness J      不變   （因為參考白一起變）
>   Chroma C         不變   （同上）
>   Saturation s     不變   （因為 s = M/Q，分子分母同時變）
> ```
> **模型如果沒做到這件事，就是錯的。**

**整體比較結果**：CIECAM02（紅）**相等或略優於** CIECAM97s（黃），只有一個資料集例外。

---

## 10. CIE TC 1-27 的產業驗證實驗（00:42:43–00:49:58）

**★ 投影片 `L17_s049_043m04s.png` 逐字**
```
CIE TC1.27
Specification of Colour Appearance for reflective Media and
Self-luminous Display Comparisons

· Gathering data based upon ★ complex images
· Testing existing models
· ★ Recommending a model for cross-media colour reproduction
```
**TC 1-27 全名**：*Specification of Colour Appearance for Reflective Media and Self-Luminous Display Comparisons*
**三個任務**：**① 用「複雜影像」收資料 ② 測試既有模型 ③ 推薦一個跨媒體色彩複製的模型**

> **★ 注意「complex images」這個詞** —— 對照 L16 §1 的實驗參數 `Scene content: simple and complex`。
> **前面所有的色貌資料（LUTCHI 等）都是 `Simple`（單一色塊）**（見 §8-1 的表格，
> LUTCHI / Kuo & Luo 的 Scene Content 欄位全部寫 `Simple`）。
> **TC 1-27 是第一次拿「整張真實影像」去測色貌模型。**
> **→ 這才是產業真正的使用情境，也是「學術模型 → 可用工具」的關鍵一步。**

**★ 測試用的四張複雜影像（投影片 `L17_s050_043m53s.png`）**
```
Musician（樂手）  ·  Golf（高爾夫）  ·  Barn（穀倉）  ·  U-chart（色票圖）
```
> **★ 選圖邏輯與 L14 §8-1 一致**：**膚色（Musician）、大面積自然色（Golf 草地、Barn 天空）、
> 以及一張「有標準色塊可以量」的 U-chart 當對照。**

**★★★ 受測的八個模型（投影片 `L17_s052_046m35s.png`「The eight tested Models」逐字）**
```
1  CIELAB      (CIE, 1986)
2  RLAB        (Fairchild, 1996)          → RLAB(avg) , RLAB(dim)
3  LLAB        (Morovic and Luo, 1996)    → LLAB(avg) , LLAB(dim)
4  Nayatani97  (Nayatani et al., 1997)    → Nayatani97(D=0) , Nayatani97(D=1)
5  ATD         (Guth, 1998)               → ATD(a=50) , ATD(a=500)
6  Hunt96      (Morovic and Luo, 1996)
7  CIECAM97s   (Luo and Hunt, 1998)       → CIECAM97s(avg) ,
                                            CIECAM97s(dim, Nc=1.1) ,
                                            CIECAM97s(dim, Nc=0.95)
8  CAM97s2     (Li et al., 1999)
```
> **★ 三個之前沒出現過的名字：**
> - **`ATD (Guth, 1998)`** —— 另一個色貌模型（A/T/D = Achromatic / Tritan / Deutan 通道），
>   一直沒被 CIE 採用，但常被列為對照組。
> - **`CAM97s2 (Li et al., 1999)`** —— **`Li` 就是 Changjun Li**，
>   **17 年後 CAM16 論文的第一作者**。他從 1999 年就在修 CIECAM97s 了。
> - **`Morovic and Luo, 1996`** —— **Ján Morovič**，色域映射（gamut mapping）領域的重要人物，也是老師的學生。
>
> **★★ 注意 `CIECAM97s` 被測了三個版本**（avg、dim Nc=1.1、dim Nc=0.95），
> 是八個模型裡變體最多的 —— **因為那時正在調 dim surround 該用哪個 Nc。**
> **這就是「參數還沒定案」的模型長什麼樣子。**

**★ 實驗設備（投影片 `L17_s053_047m02s.png`「Viewing configuration」）**
```
右：VeriVide viewing cabinet（VeriVide 標準燈箱，放印刷樣品）
左：Barco monitor（Barco 專業螢幕）
中：觀察者坐在兩者之間，轉頭比對
```
> **★ `VeriVide` 是英國的標準燈箱品牌**（呼應 L05 講的物理標準品與 D65 模擬器）；
> **`Barco` 是當年專業影像用的 CRT 監視器龍頭。**
> **設備選擇本身就說明這是「產業等級」而非「桌上型」的實驗。**

**實驗流程**：
```
Kodak 印刷影像（放在燈箱裡）
        ↕  要看起來一樣
CRT 螢幕上的影像

處理鏈：
  印刷品 →【相機模型】→ XYZ →【CAT 或 CAM】→ XYZ' →【螢幕模型】→ RGB → 顯示
```

**★ 觀察方法：短期記憶匹配（short-term memory matching）（00:47:26）**
> **「在燈箱裡看印刷影像，記住它，然後把燈箱關掉、轉頭看螢幕，判斷像不像。」**

**★★★ 實驗規模與精確條件（投影片 `L17_s055_048m17s.png`「Viewing condition」逐字）**
```
              ┌──────── Print ────────┐   ┌──────── CRT ─────────┐
Phase   Illuminant    x       y    L(cd/m²)  Illuminant   x      y    L(cd/m²)
  1       D50      0.351   0.357     64        D93      0.282  0.296     61
  2       A        0.484   0.414     60        D53      0.337  0.350     60
  3       A        0.484   0.414     60        D93      0.282  0.296     61

Note:  ★ 3 × 4 × 20 × 36 = 8,640 estimations
```
| | 數量 | 意義 |
|---|---|---|
| **3** | **Phase** | 三組「印刷照明體 × 螢幕白點」的配對 |
| **4** | **Images** | Musician / Golf / Barn / U-chart |
| **20** | **Observers** | 觀察者人數 |
| **36** | 每組的判斷數 | 成對比較 |
| **= 8,640** | **總判斷次數** | |

> ### ★★★ 這張條件表最該看出來的兩件事
> **① 三個 Phase 是刻意設計的「兩兩對照」**
> ```
> Phase 1 :  D50 ↔ D93      印刷用 D50、螢幕用 D93     ← 產業實際狀況（最常見的組合）
> Phase 2 :  A   ↔ D53      印刷換成鎢絲燈、螢幕降到 D53 ← 兩邊都動
> Phase 3 :  A   ↔ D93      印刷用 A、螢幕仍 D93        ← 只動印刷端，與 1 對照
> ```
> **Phase 1 與 3 只差在印刷端（D50 → A），Phase 2 與 3 只差在螢幕端（D53 → D93）
> —— 這是標準的「一次只變一個因子」實驗設計**（呼應 L10 的實驗設計參數清單）。
>
> **② ★★ 亮度被刻意配平了：印刷 64/60/60 vs 螢幕 61/60/61 cd/m²**
> **兩端的亮度幾乎完全相同（60 上下）。**
> **為什麼？因為如果亮度不同，Stevens effect 與 Hunt effect 就會混進來，
> 你就分不清差異是「色適應沒做好」還是「亮度不同造成的」。**
> **→ 把不想研究的參數固定住，這就是實驗控制。**
>
> **★ 但也要注意 60 cd/m² 是相當暗的**（現代螢幕動輒 300–1000 cd/m²）——
> 這是 CRT 時代的限制，也提醒我們**這批資料的適用範圍**。

**實驗規模（口語版）**：
- **三種照明體條件**（**印刷 D50 vs 螢幕 D93**、**印刷 A vs 螢幕 D53**、**印刷 A vs 螢幕 D93**）
- **四張影像**、**20 位觀察者**、**每個條件 36 對成對比較**
- **★ 總共 8,640 次判斷**

**結果**：
> **所有以 CIECAM97s 為基礎的模型（含 CMC、LLAB、Hunt96）都在 2.5 分以上（= 可接受或更好），
> 顯著優於 von Kries、ATD、DIN 等模型。**

---

## 11. ★★★ 色貌模型能預測的五個現象（00:49:58–00:57:08）必考

### ① Chromatic Adaptation 色適應
**示範**：一位女士坐在沙發上的照片（有中性灰階、紅綠藍測試色、黃色與紅色抱枕、白襯衫）。
```
把照明從一種換到另一種（例如變成偏綠、偏黃）
  ↓
一開始：「哇，差好多！」
  ↓  經過幾秒到一分鐘的適應
最後：白襯衫還是白的、抱枕還是黃的紅的、灰階還是中性的
```
> **這就是色適應。手機的「白平衡（白平衡）」做的就是這件事：先估計場景的白，再預測它在目標條件下該是什麼。**

### ② Stevens Effect 史蒂文斯效應
```
亮度 ↑  →  ★ 對比 ↑
        亮的變更亮、暗的變更暗
```
- **只跟 brightness / 中性階有關**
- 從 10⁻² 到 10⁶ cd/m²，**灰階的對比大幅增加**

### ③ Hunt Effect 亨特效應
```
亮度 ↑  →  ★ Colourfulness ↑
        彩色變更鮮豔
```
- 在極亮（10⁶）時各色的 colourfulness 拉得很開
- 在極暗（10⁻²）時**所有顏色的 colourfulness 全部擠在一起**

> **★ 記法：Stevens 管「明暗對比」，Hunt 管「彩度」。**

### ★★★ 投影片 `L17_s057_050m01s.png` 把兩個效應並排畫在同一張上 —— 這張最好記
```
      Stevens Effect                       Hunt Effect
   Brightness vs Luminance            Colourfulness vs Luminance

              10000 lux                    ★ More colourfulness
     100 lux      ▢ ← Whiter                       ▮ 10000 lux
  V=7   ▢────────╱                                 │
                                                   ▮ 1000 lux
  V=5   ▢────────▢                                 │
                                                   ▮ 100 lux
  V=1   ▢────────▢ ← Blacker
              （亮度上升，三個 V 之間「拉開」）    （亮度上升，色塊越來越豔）
```
> ### ★★★ Stevens 的圖是理解這個效應的鑰匙
> **投影片畫了 `V=1`、`V=5`、`V=7` 三個 Munsell 明度的樣品，
> 在 `100 lux` 與 `10000 lux` 兩種照度下的 brightness：**
> ```
> 100 lux   ：三個樣品的 brightness 差距「小」  ← 灰灰的一片
> 10000 lux ：三個樣品的 brightness 差距「大」  ← V=7 更白、V=1 更黑
>              ↑ Whiter                ↓ Blacker
> ```
> **★ 關鍵是「V=5（中灰）幾乎不動，兩端往外跑」** ——
> 這就是「對比增加」的精確意思：**不是全部一起變亮，而是「以中灰為軸往兩邊拉開」。**
>
> **★★ 所以 Stevens effect 不能說成「亮度上升→東西看起來更亮」**（那是廢話），
> 要說成 **「亮度上升 → 亮的更亮、暗的更暗 → 明度對比增加」**。
> **投影片上 `Whiter` 與 `Blacker` 這兩個字就是給分關鍵。**
>
> **★ 兩個效應是同一件事的兩個面向**：
> ```
> 亮度上升 →  明度軸「拉開」        = Stevens
>          →  彩度軸「拉開」        = Hunt
> ```
> **都是「照明變亮 → 視覺系統的動態範圍被撐開」。**
> **★ 而 saturation = M/Q 因為分子分母同步變大而保持不變**（見 L16 §3-3）——
> **這三件事必須一起理解，考試常合併出。**

**★ 兩張定量圖（投影片 `L17_s058` 與 `s059`）**
| 投影片 | 標題 | 橫軸 | 曲線族 |
|---|---|---|---|
| `s058` | **Hunt Effect** | **log₁₀ L_w**（−2 到 6） | **`C* = 20, 40, 60, 80`** 四條 —— 彩度越高，隨亮度上升得越陡 |
| `s059` | **Stevens Effect** | **log₁₀ L_w**（−2 到 6） | **`L* = 0.01, 20, 40, 60, 80`** 五條 —— **L\* 越高的曲線爬升越快** |

> **★ 看 `s059` 的曲線族就能看出「拉開」**：
> **L\* = 80 的曲線一路陡升到 800，L\* = 0.01 的幾乎貼著底部不動。**
> **兩條之間的垂直距離隨 log L_w 增加而變大 → 對比增加。** ✅
>
> **★ 橫軸跨 `10⁻² 到 10⁶ cd/m²`（八個數量級）** —— 從星光到正午陽光，
> **人眼的動態範圍在這裡一次呈現。**（呼應 L07 的桿細胞/錐細胞分工。）

### ④ Surround Effect 周圍效應
**同一組灰階**放在三種 surround 下：
| Surround | 情境 | 對比 |
|---|---|---|
| **Dark 全暗** | **數位電影院** | **對比大幅降低** |
| **Dim 昏暗** | 家裡看電視 | 中等 |
| **Average 一般** | 辦公室 / 戶外 | **對比最高** |

> **★ 實務後果（00:54:31）：
> 「做數位電影時，你必須調高對比，才能把原本的外觀救回來。
> 這是色貌模型最典型的應用。」**

**★★★ 定量圖（投影片 `L17_s062_055m33s.png`「Surround Effect」，我把讀到的數值列出來）**
```
橫軸：Average → Dim → Dark        縱軸：預測的明度 J
              Average    Dim    Dark     變化
   L* = 80       74       77      79      +5
   L* = 60       50       56      60     +10
   L* = 40       31       36      41     +10
   L* = 20       15       20      24      +9
   L* = 0.001     0        0       1      +1
```
> ### ★★★ 這張圖必須看出「兩件事」
> **① 所有曲線都往上走 → 在暗周圍下，同一個顏色的明度 J 預測值「變高」。**
> **② ★ 但升幅不一樣：中低明度升 +9~+10，最亮的只升 +5，全黑幾乎不動。**
>
> **→ 結果是「上下被擠在一起」：**
> ```
> Average：L*=80 與 L*=20 之間相差  74 − 15 = 59
> Dark   ：L*=80 與 L*=20 之間相差  79 − 24 = 55     ← 縮小了
> ```
> **★★ 這就是「暗周圍 → 知覺對比降低」的量化證明。**
> **暗部被拉亮得比亮部多 → 整張影像看起來「灰灰的、發白、沒有層次」。**
>
> ### ★★★ 這直接解釋了一個實務常數：**電影用 gamma 2.6，電腦螢幕用 2.2**
> ```
> 暗周圍（電影院）→ 知覺對比下降 → 必須「加大物理對比」來補償 → 提高 gamma
> ```
> **老師說的「做數位電影必須調高對比」，在工程上就是這個。**
> **★ 這是「色貌模型 → 一個你每天都在用的數字」最直接的例子。**

### ⑤ Lightness Contrast Effect 明度對比效應（同時對比）
```
同一個顏色：
  放在【黑背景】→ 看起來更亮
  放在【白背景】→ 看起來更暗
```
- **色塊與影像都適用**
- **★ 投影片 `L17_s063_055m37s.png` 用「兩排六格」示範**：
  ```
  上排：同一個灰方塊，放在【白底】【灰底】【黑底】
  下排：同一叢粉紅色花，放在【白底】【灰底】【黑底】
  ```
  **→ 上排證明它對「單純色塊」成立，下排證明它對「真實影像」一樣成立。**

**★★★ 定量圖（投影片 `L17_s064_056m33s.png`，橫軸是 `Y_b`）**
```
橫軸：Y_b（背景的亮度因數，0 → 100）    縱軸：預測的明度 J
              Y_b=0    Y_b=100    變化
   L* = 80      80    →   69       −11
   L* = 60      59    →   42       −17
   L* = 40      40    →   23       −17
   L* = 20      22    →    9       −13
```
> ### ★★ 三個要點
> **① 全部往下走 → 背景越亮，同一個顏色的明度預測值越低。** ✅ 同時對比
> **② 中間調降最多（−17），兩端降較少** —— 又是「中間被壓縮」的模式。
> **③ ★★ 曲線在 `Y_b = 0 → 10` 之間掉得最急，之後就趨平。**
>
> **★★ 第 ③ 點有一個很實用的推論**：
> **CIECAM02 的預設 `Y_b = 20` 恰好落在曲線「轉平之後」** ——
> 也就是**選在一個對誤差不敏感的位置**。
> 如果預設值選在 `Y_b = 5`，那麼估錯一點點背景亮度，J 就會大幅改變。
> **→ 標準的預設值不是隨便取的，是取在「平坦區」。**
>
> **⚠️ 反過來說**：**如果你的實際背景很暗（Y_b < 10），就一定要老實量、老實填**，
> 因為那正是曲線最陡的地方。**（呼應文末出入第 1 條「Y_b 的單位陷阱」。）**

---

## 12. ★★★ 跨媒體色彩複製的完整工作流程（00:57:08–01:01:36）

**這張圖是整門課的收斂點。**

### ★★★★ 投影片 `L17_s065_056m57s.png`「6. Apply CAMs in image reproduction」的原始方塊圖
```
   Input device signals                              Output device signals
            │                                                  ▲
            ▼                                                  │
   ┌─────────────────────┐                        ┌────────────────────────┐
   │ Forward device model│                        │  Reverse device model  │
   └─────────────────────┘                        └────────────────────────┘
            │                                                  ▲
            ▼                                                  │
     CIE specification            ● ICC                 CIE specification
            │                     （黃點）                      ▲
            ▼                        │                         │
   ┌─────────────────────┐           │            ┌────────────────────────┐
   │Colour appearance    │           │            │Reverse appearance model│
   │       model         │           │            └────────────────────────┘
   └─────────────────────┘           │                         ▲
            │                        │                         │
            ▼                        │                         │
    Appearance attributes            │                         │
            │                        │                         │
            ▼                        │                         │
   ┌─────────────────────┐           │                         │
   │Gamut compressing    │           │                         │
   │       model         │           │                         │
   └─────────────────────┘           │                         │
            │                        │                         │
            ▼                        │                         │
   Modified appearance attributes ───┴─────────────────────────┘
```
> ### ★★★ 這張原圖比我下面的簡化版多了三個重點
> **① 用的詞是 `Forward / Reverse DEVICE model` 與 `Colour appearance model / Reverse appearance model`**
> —— **「裝置模型」與「色貌模型」是兩層，各自有正逆向。四個方塊，不是兩個。**
>
> **② ★ 色域壓縮的正式名稱是 `Gamut compressing model`，而且它獨立成一個方塊**，
> 夾在 `Appearance attributes` 與 `Modified appearance attributes` 之間。
> **→ 色域映射是在「色貌屬性空間」裡做的，不是在 XYZ 或 RGB 裡做。**
> **這一點非常重要**：因為只有在色貌空間裡，「壓縮彩度但保持色相與明度」才是**知覺上正確**的操作。
>
> **③ ★★ 黃色的 `ICC` 圓點標在 `CIE specification` 這一層**
> —— **ICC 色彩管理的「連接空間（PCS）」就在這裡。**
> ```
> ICC 標準的做法 ：停在 CIE specification（XYZ / Lab），用 PCS 交換
> 加上 CAM 的做法：再往下走到 Appearance attributes 才交換
> ```
> **差別在於：ICC 的 PCS 假設兩端的觀看條件相同（都是 D50、2°），
> 而 CAM 這一層才真正處理「兩端觀看條件不同」的問題。**
> **→ 這就是「為什麼有了 ICC 還需要色貌模型」的答案。**

```
【輸入影像】例如螢幕上的 RGB
      │
      ▼ ① Device Calibration Model（例如 monitor model）
    XYZ
      │
      ▼ ② Forward CAM（CIECAM02 / CAM16）
      │    帶入【輸入端的觀看條件】
   JCH  或  QMH
      │
      ▼ ③ ★ Gamut Mapping 色域映射
      │    （螢幕色域大、印刷色域小 → 很多顏色印不出來 → 必須壓縮）
   JCH' 或 QMH'
      │
      ▼ ④ Reverse CAM（同一個模型，反向）
      │    帶入【輸出端的觀看條件】
    XYZ'
      │
      ▼ ⑤ Output Device Model
【輸出】另一台顯示器 / 彩色印表機 / 投影機 / 布料染色 / 塗料
```

**★ 兩個關鍵觀念**：
1. **正向與反向用的是「同一個模型」，唯一的差別是「觀看條件參數」不同。**
   （例如輸入是 D65、輸出是 D50。）
2. **用 JCH 還是 QMH？**
   | 情境 | 用哪一組 |
   |---|---|
   | **有參考白**（印刷品） | **J C H**（相對屬性） |
   | **照明會改變**（手機在不同環境下） | **Q M H**（絕對屬性） |

---

## ⚠️ 轉錄勘誤

| 轉錄文字 | 正確 |
|---|---|
| Hound / Hond / Bob Hound | **Hunt**（**Robert W. G. Hunt**, "Bob Hunt"） |
| Nyantani / Nayatani | **Nayatani**（納谷嘉信，日本） |
| Luchest Institute of Technology | **Rochester Institute of Technology (RIT)** |
| CK97S / CKM02 / CCAMO2 / C-CAM | **CIECAM97s / CIECAM02** |
| TC134 / TCA01 / TC127 | **TC 1-34 / TC 8-01 / TC 1-27** |
| Brenneman | **Breneman**（E. J. Breneman, Kodak） |
| Helsing / Helsinki | **Helson**（Harry Helson） |
| Lamander rig / Lam and Rigg | **Lam & Rigg** |
| Reagan | **Rigg**（Brian Rigg） |
| cantilever square meter | **candela per square metre (cd/m²)** |
| von Kreis | **von Kries** |
| relative media（TC1-27 名稱） | **reflective media** 反射媒體 |
| casserole tube | **cathode ray tube (CRT)** 映像管 |
| gamma mapping | **gamut mapping** 色域映射 |
| California（在色貌屬性語境） | **colourfulness** |
| the fogra | **Fogra**（德國印刷技術研究協會） |
| 白平衡 / bypingham | **white balance** 白平衡 |

---

## 🔍 與標準說法的出入 / 需要留意

### 1. **Y_b 的單位陷阱** ⚠️ 這是實作時最常見的錯誤
- 老師說「灰背景 Y = 0.18，相當於 L\* = 50」。
- **兩種寫法都在流通，但輸入模型時只能用一種**：
  - **18% 灰卡** → 以**分數**表示是 **0.18**
  - **CIECAM02 的 Y_b 參數要求以「相對於白 = 100」的百分比輸入 → 應填 `Y_b = 20`（或 18）**
- **填 0.18 進去模型會直接算出離譜的結果。** 這正是老師強調「單位搞混就永遠做不對」的實例。
- 對照：**Y_b = 20 → L\* = 51.8**；**Y_b = 18 → L\* = 49.5**。慣例上 CIE 用 **Y_b = 20**。

### 2. Surround 的實際參數（老師只講概念，補上數值）
CIECAM02 / CAM16 的三個 surround 參數：
| Surround | **F**（適應程度上限） | **c**（暗適應係數） | **N_c**（色感應係數） |
|---|---|---|---|
| **Average 一般** | **1.0** | **0.69** | **1.0** |
| **Dim 昏暗** | **0.9** | **0.59** | **0.9** |
| **Dark 全暗** | **0.8** | **0.525** | **0.8** |
- **c 就是控制「暗 surround 對比會降低」的那個參數**——這正是第 11 節第 ④ 點的數學實現。
- 另外 **L_A 的慣用算法**：`L_A = L_w × Y_b / 100`（L_w = 白的亮度，cd/m²）。

### 3. CAM16 到底改了什麼（老師只說「效能相近」）★ **2026-08 文獻修訂**

**正確作者**：**Li C., Li Z., Wang Z., Xu Y., Luo M.R., Cui G., Melgosa M., Brill M.H., Pointer M. (2017)**
⚠️ **Hunt 與 Fairchild 都不在名單上**（Hunt 是 CIECAM97s 的共同作者、Fairchild 是 CIECAM02 的共同作者）。

**論文摘要的官方說法（手段）**：
> **CIECAM02 的結構被改變，使「色適應」與「亮度適應」在**同一個空間**中完成，
> 而不是像 CIECAM02 那樣在**兩個不同空間**中完成。**

**具體做法**：
```
CIECAM02：色適應用 M02（CAT02）→ 再轉到 M_HPE（Hunt–Pointer–Estévez）做亮度適應
            ↑ 兩個空間，要來回轉換
CAM16   ：★ 用「同一個矩陣 M16」取代 M02 與 M_HPE 兩者
            → 兩個適應在同一個「cone-like 空間」完成
```

### ★★★ CIECAM02 到底是怎麼壞的（2026-08-26 由原始論文全文更正）

**我原本寫的**「CAT02 在極飽和藍紫色算出負的錐細胞值」——**方向對，但講錯了失效的位置。**

**論文原文：*"this problem mainly comes from the lightness computation"***
```
J = 100 · (A / A_w)^(cz)                         …… (1)
A = [ 2R'a + G'a + (1/20)B'a − 0.305 ] · N_bb    …… (2)
```
**失效鏈（三步）**：
1. **A_w（白的無彩訊號）對所有 CIE 照明體恆為正**（Li & Luo 已證明）
2. **但樣品的 A 可以是負的**
3. → **`(負數)^(非整數 cz)` 數學上無定義 → 計算程序直接中斷（early termination）**

> **★ 正確敘述：負值出現在「無彩訊號 A」，崩潰發生在「明度 J 的非整數次方」。
> 這不是精度問題，是程式直接掛掉——而且最常發生在「跨媒體影像處理」時。**

### ★★ 為什麼「只換矩陣」的修法全部失敗
先前有人提出用 **M_HPE** 或 **M_OPT** 矩陣取代 CAT02 矩陣、**保持 CIECAM02 原結構**。論文明說：
> **「兩個矩陣都失敗了，因為它們只解決了數學問題，代價是損失了對視覺實驗結果的預測精度。」**

**→ 結論：必須改結構，不能只換零件。**

### ★★ M16 是怎麼被決定的——把「不會壞」寫進約束條件
```
約束(14)： M · [x̄(λ), ȳ(λ), z̄(λ)]ᵀ ≥ 0   對所有 λ、且 2° 與 10° 觀察者皆成立
約束(15)： M 每一列的元素和 = 1
約束(13)： nesting rule：X_CIE ⊆ X_M

推論鏈：
  M 作用在色匹配函數上恆非負
   → R,G,B 恆非負（適應對角矩陣 K(D) 恆非負）
   → 無彩訊號 A 恆非負
   → J 永遠算得出來（A_w 恆正）
   → ★ 模型「在數學上不可能崩潰」
```
> **這是本篇最值得學的一課：不是事後補丁，而是把「不會壞」寫成最佳化的約束。**

### ★ 效能結論（原始論文的精確版）
| 比較 | 結果 |
|---|---|
| CAT16 vs CAT02（對應色資料） | **相當** |
| **★ nesting rule** | **CAT16 滿足，CAT02 不滿足** |
| CAM16 vs CIECAM02（**明度**） | 相當 |
| **★ CAM16 vs CIECAM02（鮮豔度、色相組成）** | **CAM16 更好** |
| CAM16-UCS vs CAM02-UCS | 在**小色差 / 大色差 / 照明體 A 色差**三組資料上**相等或更好** |
| 額外 | CAM16-UCS 色差可再用**歐氏色差的冪次修正**改善 |

驗證資料：**對應色資料集 + LUTCHI 色貌資料集**（又是老師 1991 年那套）。

**★★ 2022 年的重大更新**：
> **CAM16 已正式成為 CIE 標準 —— CIE 248:2022《CIECAM16》，取代 CIE 159:2004（CIECAM02）。**
> CIE 官方定位：適用於**攝影印刷品與自發光顯示器**、顏色被視為**相關色（related colours）**、使用 **1931 2° 觀察者**。
> **→ 課堂上「還沒正式標準化」這句話已經過時。新專案請用 CIECAM16 / CAT16 / CAM16-UCS。**

### 3b. ★★ 更後續的發展：Hellwig & Fairchild (2022) 指出 CAM16 的明度方程式有問題
- **Q（brightness）在 CIECAM02/CAM16 中是 J（lightness）的「非線性」函數**——這個非線性是 Hunt 模型的歷史遺產
- Hellwig & Fairchild 提出**更穩健的「線性」Q–J 關係**，並連帶重寫 **chroma、colourfulness、saturation** 的方程式
- 用 **Munsell 系統**與**羅明自己的 LUTCHI 資料集**驗證，優於原始 CAM16
- 姊妹論文另外把 **Helmholtz–Kohlrausch 效應**（高彩度色看起來比同亮度中性色更亮）納入模型
- 因此 **CAM16-UCS 也被修訂**（*Revising CAM16-UCS*, CIC30, 2022）
- **★ 但 L16 的比值定義 `J = Q/Q_w`、`C = M/Q_w`、`s = M/Q = C/J` 完全不受影響**——他們改的是「那個非線性函數的形式」，不是這幾個定義。**考試照舊。**

### 4. 「CIELAB 也是色貌模型」的層級（延續 L14 的註記）
```
CIELAB    ：只有 XYZ 與 XwYwZw → 只能做「白點除法」式的色適應近似
CIECAM02  ：多了 L_A、Y_b、Surround → 能預測 Hunt / Stevens / Surround / 同時對比
```
- CIELAB 的白點除法是在 **XYZ 空間**做的，而不是在**錐細胞空間**——這叫 **"wrong von Kries"**，在強烈變色照明下誤差很大。
- CAT02/CAT16 則是先轉到錐細胞（sharpened cone）空間再做增益調整，並且**支援「不完全適應（incomplete adaptation, D < 1）」**——這是 CIELAB 完全沒有的能力。

### 5. Surround effect 的正式模型（老師沒點名）
「暗 surround 對比降低」的定量描述最早來自 **Bartleson & Breneman (1967)** 的方程式。
實務上的落實就是**渲染 gamma**：
| 觀看條件 | 建議額外 gamma |
|---|---|
| **Average（辦公室/戶外）** | **1.0** |
| **Dim（客廳看電視）** | **約 1.25** |
| **Dark（電影院）** | **約 1.5** |
→ 這就是為什麼 **DCI-P3 的電影母版與 Rec.709 的電視母版必須分開做**。

### 6. 「Stevens effect」與 L09 的 Stevens 冪次律是同一個人
- **S. S. Stevens**——L09 講的 **Stevens' Power Law** 與這裡的 **Stevens effect** 出自同一位心理物理學家。
- 兩者其實是同一件事的兩面：**冪次律的指數會隨適應亮度改變**，指數變大 → 對比增強。

### 7. 對應色資料集的規模是這個領域的瓶頸
- 老師列的 14 組資料、約 700 色，**至今仍是全世界色貌模型的主要訓練與驗證資料**。
- 這些資料的**觀看條件範圍有限**（照度多在 100–2300 lux、CCT 多在 2856–6500 K）。
- **所以 CIECAM02/CAM16 在 HDR（>10000 cd/m²）、極低亮度、以及高彩度 LED 照明下的表現是未經充分驗證的**——這正是老師現在的研究方向（見 L13 提到的 CIC 論文）。

**✅ 2026-08-26：這個判斷的「低亮度」那一半，已由羅明自己的論文證實**
> **Zhu & Luo (2022), "A Revised Formulation Based on CIECAM16 for Cross-Media Colour Reproduction via Real Scene Experiment", CIC30**

**實驗設計**（可直接對照 L10 的實驗參數表）：
- **閾值法**；真實場景三類：**畫作、蔬果、膚色色卡**（全是記憶色）
- **16 組適應條件 = 4 種 CCT（3000/4500/6500/8000 K） × 4 種照度（10/100/500/1000 lux）**
- 4 種不同尺寸的顯示器
- 光源：**Thouslite LEDcube，11 通道可調 LED**（★ 就是 L06 老師說的那台）

**三個結論**：
1. **真實場景與螢幕影像的色貌確實不同，★ 尤其在「低 CCT」與「低亮度」下差異最大**
2. **場景內容與顯示器尺寸「沒有顯著影響」**（有點反直覺，但這是實驗結果）
3. **★ CIECAM16 在「亮度」的預測上有很大偏差，需要修正，尤其是「低 CCT + 低亮度」** → 他們提出了修正式

### 8. ★ 跨媒體比對時，surround 該選哪一個？（課堂沒講，但實作關鍵）
Zhu & Luo 論文引用的相關結果：
| 研究 | 發現 |
|---|---|
| **Xu et al.** | 比對**真實照明場景**與螢幕重現時，**`dim` 與 `dark` 表現相似，且都優於 `average`** |
| **Lu et al.** | 燈箱印刷樣 vs 螢幕：**`dim` 在三種條件下都表現良好**；`dark` 與 `average` 的表現**取決於顏色的明度與彩度** |
| **Huang et al.** | **觀看照度越高 → 螢幕上匹配色的飽和度越高** ← **Hunt effect 在跨媒體上的直接體現** |

> **★ 實務結論：做跨媒體色彩複製，surround 參數選 `dim` 通常比 `average` 好。**
> 老師課堂上只解釋了三種 surround 的定義，沒說實務上該選哪個。

---

## 📌 本節可能考點

1. **★ 色貌模型的定義？CIE 要求一個模型至少要有什麼？**
2. **★ 色貌模型的發展史：CIECAM97s → CIECAM02 → CAM16 的年份與作者。**
3. **★★ CIECAM02 的輸入有哪些？各自的單位是什麼？**（L_A 用 cd/m²、Y_w = 100、Y_b ≈ 20）
4. **★★ 畫出色貌模型的內部流程**（色適應 → 非線性壓縮 → 對立通道 → 屬性）
5. **★★ CIECAM97s 有哪三個缺陷？CIECAM02 怎麼修的？**
6. **★★★ 色貌模型能預測的五個現象：色適應、Stevens、Hunt、Surround、同時對比——各是什麼？**
7. **★ Stevens effect 與 Hunt effect 的差別？**（前者管明暗對比，後者管彩度）
8. **★★★ 畫出跨媒體色彩複製的完整工作流程**（含正向 CAM、色域映射、反向 CAM）
9. 什麼時候用 JCH、什麼時候用 QMH？
10. 什麼是 corresponding colours？怎麼取得？
11. Surround 的三種條件是什麼？為什麼電影院要調高對比？
