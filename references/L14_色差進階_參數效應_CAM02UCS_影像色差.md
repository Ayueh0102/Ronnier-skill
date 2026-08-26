# L14｜Lecture 8（下）：參數效應、Crispening、CAM02-UCS、影像色差與 S-CIELAB
**來源**：`2021-11-06 13-19-02.mp4`（00:00–01:14:08）｜Day 3 下午
**這一節把色差從「色塊」推到「真實產品與影像」，是老師研究的最前線。**

---

## 0. 開場：色差就是錢（00:00–00:01:56）★ 老師的產業視角

> **「如果你做手機、電視、顯示器、相機——**
> **你的品質就是用色差來評判的。**
> **你能做到 ΔE = 1，代表機台之間色彩一致、產品非常可靠；
> 如果是 4 或 5，色差就太大了。**
> **★ 你的客戶是按照你的 ΔE 值付錢的。**
> **色差越小 = 色彩管控越好 = 你可以收更多錢。
> 典型的例子就是 Apple——為什麼比較貴？因為他們什麼都管，尤其是顏色。
> 他們機台之間的批次色差非常小。」**

---

## 1. 2001 之後的四個議題（00:01:56–00:03:00）

1. **驗證 CIEDE2000 到底可不可靠**
2. **參數效應（parametric effect）**
3. **不以 CIELAB 為基礎的新均勻色空間**
4. **影像色差（image colour difference）評估**

**CIEDE2000 的驗證（00:03:27）**：
- 西班牙 **Melgosa（Granada）團隊**對**五項修正**逐項做了**顯著性檢定**
- 背景：CIEDE2000 一出來就有爭議——**「太複雜了，為什麼要五個修正？」**
- 結果：在色相修正上發現一些不規則，**但差異很小** → 五項修正站得住腳

**產業採用現況（00:04:29）**：
| 產業 | 現況 |
|---|---|
| **塗料 / 塗裝** | **非常成功，已全面採用 CIEDE2000** |
| **紡織** | **仍用 CMC**（1980 年代末採用為標準至今），**但已願意轉換到 CIEDE2000** |
| **其他所有產業** | **已用 CIEDE2000** |

---

## 2. ★★★ 參數效應與參考條件（00:04:58–00:09:18）

> **「任何色差公式——包括 CIELAB——都只能在這一組嚴格的條件下使用。」**

### 2-0 ★★★ 參數效應的完整清單（教材「Parametric Effect」原文，**十項**）
```
· Aperture vs surface modes
· Perceptibility vs acceptability types
· Surface properties: paint, textile, prints, etc
· Surface vs self-luminous colours
· Separation
· Physical size
· Colour difference magnitude
· Texture
· Background
· Illuminant
```
| # | 參數 | 白話 | 本課哪裡展開 |
|---|---|---|---|
| 1 | **Aperture vs surface modes** | 孔徑色 vs 表面色 | L16 觀看模式 |
| 2 | **Perceptibility vs acceptability** | 感知性 vs 可接受性 | §6；L13 的 BFD 資料（A% vs ΔV） |
| 3 | **Surface properties** | 油漆 / 紡織 / 印刷，材質不同 | L13：CMC 進紡織 ISO、CIE94 進塗料 ISO |
| 4 | **Surface vs self-luminous** | 表面色 vs 自發光（螢幕） | §8 影像色差 |
| 5 | **Separation** | 兩樣品之間有沒有縫 | §2-1 參考條件 |
| 6 | **Physical size** | 樣品大小（視野張角） | §2-1；L02 的 2°/10° |
| 7 | **Colour difference magnitude** | **色差本身的大小** | **§5（LCD/MCD/SCD 實驗）** |
| 8 | **Texture** | 紋理是否均勻 | §2-1 |
| 9 | **Background** | 背景明度 | **§3 Crispening effect** |
| 10 | **Illuminant** | 照明體 | §2-1 |

> **★★ 這十項就是「為什麼色差公式需要 k_L、k_C、k_H 三個參數因子」的完整理由清單。**
> **參數因子存在的意義 = 「把實際觀看條件偏離參考條件的部分，用一個乘數補回來」。**
> 老師講的 `K_L = 2`（影像，§8-4）、`CMC(2:1)`（紡織可接受性）都是這張表第 2、3、4 項的實例。

### 2-1 CIEDE2000 的參考條件（Reference Conditions）★ 必背
**教材「Parametric Effect — Reference Viewing Condition」原文（九列）：**
```
Illuminant        ★ D65 Simulator
Illuminance         1000 lux
Observer            Normal colour vision
Background          Neutral grey with L*=50
Mode of viewing     Object
Sample size       ★ >4° viewing field
Separation          edge contact
Texture             Homogeneous
Magnitude         ★ <5 ΔE*ab
```

| 參數 | 參考條件 |
|---|---|
| **照明體** | **D65 Simulator（D65 模擬器）** ★ 見下方註 |
| **照度** | **1000 lux（很亮）** |
| **觀察者** | 正常色覺 |
| **背景** | **中性灰，L\* = 50** |
| **觀看模式** | **物體色（object colours）**——不是孔徑色、不是自發光 |
| **樣品大小** | **視野張角 > 4°** |
| **樣品間隔** | **邊緣接觸（edge contact / hairline）——不可有縫隙** |
| **紋理** | **均勻（homogeneous）** |
| **色差大小** | **ΔE\*ab < 5** |
| **判斷型態** | **感知性（perceptibility）**——**不是**可接受性（acceptability / pass-fail）<br>（★ 這一列不在投影片上，來自老師口頭與清單第 2 項） |

> ### ★★ 注意投影片寫的是 `D65 Simulator`，不是 `D65`
> **這正是老師的鐵律 ③「Illuminant ≠ Light source」的精確用法：**
> ```
> D65            = 一組「數表」，是計算用的照明體（illuminant），世界上做不出來
> D65 Simulator  = 一個「實體光源」，光譜盡量逼近 D65 的燈箱
> ```
> **視覺實驗一定是在燈箱裡做的 → 條件必須寫 Simulator，不能寫 D65。**
> **★ 而 D65 模擬器逼近得好不好，是用 `MI（同色異譜指數）` 或 CIE 51 的等級（A–E）來評的**
> —— 直接接到 **L15 同色異譜**。**寫論文的實驗方法段要寫「D65 simulator」並註明其等級。**

### 2-2 老師逐條說明「什麼時候不能用」（00:06:51–00:08:48）

| 條件 | 違反的情況 |
|---|---|
| **孔徑色 vs 表面色** | 看燈光（aperture colour）→ **不能用** |
| **感知性 vs 可接受性** | 業界做 **pass/fail 判定 → 不能用**（那含有**商業偏差**） |
| **表面性質** | 「**嚴格說只能用在塗料**，連紡織品和印刷都不算」——但實務上只要夠均勻就會用 |
| **紋理** | **任何有紋理、不均勻的材料 → 不能用** |
| **自發光** | **顯示器 → 嚴格說不能用** |
| **間隔** | **兩塊之間有縫 → 不能用** |
| **尺寸** | **小於 4° → 不能用** |
| **色差大小** | **ΔE\*ab > 5 → 不能用**（Munsell 色票之間平均約 10 個單位，超出範圍） |
| **背景** | **不是 L\*=50 的灰 → 不能用** |
| **照明體** | **不是 D65（例如照明體 A）→ 不能用** |

> **★ 老師的結論：「所以色差公式的適用範圍其實非常有限。
> 這就是為什麼我們需要『參數化（parametric）』的方程式——讓條件改變時公式仍然能用。」**
>
> **「我現在還有學生在做參數化方程式的研究。目標是：不同照明、螢幕上的影像、不同紋理、不同尺寸、不同色差大小，都能用同一套 parametric CIEDE2000。」**

---

## 3. ★★★ Crispening Effect 銳化效應（背景效應）（00:09:18–00:16:11）

> **📌 原始論文（2026-08 文獻補註）**：**Guan & Luo (1999), "Investigation of parametric effects using small colour differences", *Color Res. Appl.*（206 次引用）** —— 本節整段實驗（背景明度 0.2 / 20 / 50 / 72 / 95、約 40 對中性樣品、ΔE≈2.5）就是這篇論文。

### 3-1 實驗設計
- 約 **40 對中性色樣品**（從黑到白），**每一對的色差都控制在 ΔE ≈ 2.5**
- 分別放在 **五種背景**上判斷：**L\* = 0.2（近黑）、20、50、72、95（近白）**
- Y 軸畫 **ΔE / ΔV**（CIELAB 色差 ÷ 視覺色差）

### 3-2 結果與解讀 ★
> **如果 CIELAB 是對的，所有點應該落在一條水平線上。**
> **但它們不是——而是呈現「V 形」，而且 V 的最低點會跟著背景的明度跑。**

| 背景 L\* | V 形最低點的位置 |
|---|---|
| 0.2（黑） | 落在最暗端 |
| 20 | 落在 L\*≈20 |
| **50** | **落在 L\*≈50** |
| 72 | 落在 L\*≈72 |
| 95 | 落在最亮端 |

**★ 核心結論**：
> **當樣品的明度「接近背景的明度」時，看到的色差最大。**
> （ΔE/ΔV 最小 = 同樣的儀器色差，人看到的差異最大）

> **這就是 Crispening Effect（銳化效應 / 明晰效應）。**

**★ 有趣的插曲（00:15:39）**：
老師當場說 **「Crispening，我不知道中文怎麼翻。你去查一下，下次我們再談。」**
（→ 中文文獻常見譯法為 **「銳化效應」、「明晰效應」**，但多數教科書直接沿用英文。）

**實務意義**：
- 比色時**背景會直接改變你看到的色差大小**——這就是**評色燈箱一律用 N5 中性灰（L\*≈50）**的原因
- 在白背景上比暗色、在黑背景上比亮色，都會**低估**色差

---

## 4. CIEDE2000 的三項式改寫（00:16:11–00:17:45）

**問題**：CIEDE2000 有**四項**（三項 + 旋轉項），旋轉項讓公式**很難用**（例如做色彩排序時）。

**老師團隊的解法**：把旋轉項**吸收進重新定義的 ΔC″、ΔH″、S_C″、S_H″** →
```
ΔE00 (四項)  ≡  ΔE00 (三項)     ← 兩式答案完全相同
```
> **「這能幫助大家做色彩排序（colour sorting）。」**

### ★★★ 完整式（教材「CIEDE2000 3-terms Formula」原文）
**原式（四項，含交叉項）**
```
ΔE = √[ (ΔL'/(k_L S_L))² + (ΔC'/(k_C S_C))² + (ΔH'/(k_H S_H))²
        + R_T (ΔC'/(k_C S_C))(ΔH'/(k_H S_H)) ]
```
**改寫式（三項，純平方和）**
```
ΔE₃₋terms = √( ΔL₀₀² + ΔC₀₀² + ΔH₀₀² )
          = √[ (ΔL'/(k_L S_L))² + (ΔC''/S''_C)² + (ΔH''/S''_H)² ]

where
    tan(2φ) = R_T · (k_C S_C)(k_H S_H) / [ (k_H S_H)² − (k_C S_C)² ]

    ΔC'' = ΔC'·cos(φ) + ΔH'·sin(φ)
    ΔH'' = ΔH'·cos(φ) + ΔC'·sin(φ)

    S''_C = (k_C S_C) · √[ 2(k_H S_H) / ( 2(k_H S_H) + R_T (k_C S_C) tan(φ) ) ]
    S''_H = (k_H S_H) · √[ 2(k_C S_C) / ( 2(k_C S_C) + R_T (k_H S_H) tan(φ) ) ]
```

> ### ★★★ 這在數學上是什麼？——「把二次型對角化」
> 四項式其實是一個**二次型（quadratic form）**：
> ```
> ΔE² = A·ΔC'² + B·ΔH'² + C·ΔC'·ΔH'   （加上獨立的 ΔL' 項）
>                            ↑ 交叉項 = 橢圓被轉了一個角度
> ```
> **線性代數告訴我們：任何帶交叉項的二次型，都可以透過「轉座標軸」把交叉項消掉。**
> 那個角度就是 **φ**，而 `tan(2φ) = …` 正是**主軸角公式**的標準長相
> （對照通式 `tan 2φ = C/(A−B)`，這裡 `A−B` 就是分母的 `(k_H S_H)² − (k_C S_C)²`）。
>
> **★ 所以「三項式」不是另一個公式，而是同一個橢圓「換一組座標軸來寫」。**
> ```
> 四項式：座標軸固定在 ΔC'、ΔH' 上，用交叉項描述傾斜
> 三項式：座標軸轉到橢圓的主軸上（ΔC''、ΔH''），傾斜被吸收進座標，交叉項消失
> ```
> **兩者算出的 ΔE 完全相同。**
>
> **★ 為什麼要這樣做？** 因為**純平方和的形式才是「距離」**，
> 可以拿去做**排序、內插、聚類、色域映射**；有交叉項的形式做不到。
> 這也就是老師說的「幫助大家做 colour sorting」。
>
> **★ 這一頁同時是回答 L13「R_T 到底在做什麼」的最終版**：
> `R_T` 的全部作用，就是編碼一個旋轉角 φ。**它不是「多加一個修正」，而是「換一個角度看」。**

> **⚠️ 一個待查的小疑點**：標準的旋轉矩陣應為 `[[cos, sin], [−sin, cos]]`，
> 也就是 `ΔH'' = ΔH'cos(φ) − ΔC'sin(φ)`（**減號**）。
> **投影片兩式都寫成加號。** 這可能是刻意搭配 `S''_C / S''_H` 的縮放設計，也可能是簡報排版掉了負號。
> **要實作三項式的話，請以原始論文為準核對這個符號**（四項式不受影響，照用即可）。

---

## 5. ★★ 色差「大小」的實驗：CIEDE2000 到底能不能用在大色差？（00:17:45–00:23:14）

### 5-1 動機
CIEDE2000 的規格自己寫著「**ΔE < 5**」→ 業界就問：
> **「那大色差是不是該用 CIELAB、小色差才用 CIEDE2000？」**

老師（與 Wang、Cui 博士）做了實驗來回答。

### 5-2 ★★★ 實驗設計（教材「Leeds experiment — Wang, Cui and Luo」原文）
```
Data       No.     Max.      Min.     Median    Mean
Large      60     107.20     21.93     42.10     50.01
Medium     45       6.95      2.06      2.85      3.46
Small     100       1.36      0.21      0.53      0.55

30 observers
Scaling method:
   - LCD: Ratio
   - MCD: pair comparison
   - SCD: perceptibility
```
| 資料集 | 對數 | 範圍（CIELAB ΔE） | 中位數 | **平均** | **★ 尺度化方法** |
|---|---|---|---|---|---|
| **LCD**（large） | **60** | **21.93 – 107.20** | 42.10 | **50.01** | **Ratio 比值法** |
| **MCD**（medium） | **45** | **2.06 – 6.95** | 2.85 | **3.46** | **Pair comparison 成對比較** |
| **SCD**（small） | **100** | **0.21 – 1.36** | 0.53 | **0.55** | **Perceptibility 感知性** |
| **合計** | **205 對** | | | | **30 位觀察者** |

> **⚠️ 修正我原本寫的**：我寫「SCD 平均 ≈ 1.6」——**錯了，1.36 是最大值，平均是 0.55**。
> 順帶把 LCD 的 50.01、MCD 的 3.46 一併校準。**SCD 的平均色差只有 0.55，比一個 JND 還小。**

> ### ★★★ 這張表最該學的一件事：**尺度化方法必須跟色差大小配套**
> ```
> LCD（ΔE ≈ 50）  → Ratio 比值法          ← L09 的 Stevens 量值估計
> MCD（ΔE ≈ 3.5） → Pair comparison       ← L09 的 Thurstone 比較判斷
> SCD（ΔE ≈ 0.55）→ Perceptibility 感知性 ← L10 的閾值法
> ```
> **為什麼不能三組都用同一種方法？**
> - **對 ΔE ≈ 0.55 的樣品用比值法** → 觀察者根本看不出差別，**問不出「是幾倍」**
> - **對 ΔE ≈ 50 的樣品用感知性** → **每一對都 100% 看得出來，資料沒有鑑別力（天花板效應）**
> - **成對比較**只在中間帶好用：差異看得見、又還沒大到可以直接估比例
>
> **★★ 這是把 L09/L10 的心理物理學直接用在真實研究上的最佳範例。**
> **考題若問「不同大小的色差要用什麼心理物理方法」，這張表就是答案。**

**三種心理物理方法**：**比值法（ratio method）、成對比較、感知性閾值**

### 5-3 結果（評估指標：**PF/3**，可視為百分比誤差，**越小越好**）
| 公式 | LCD | MCD | SCD | 綜合 |
|---|---|---|---|---|
| **CIELAB** | **還可以** | **很差** | **很差** | **最差** |
| CMC | 中等 | 中等 | 中等 | 中等 |
| CIE94 | 中等 | 中等 | 中等 | 中等 |
| **CIEDE2000** ✅ | **好** | **好** | **好** | **★ 最好** |

> **★ 結論：CIEDE2000 在「所有色差大小」下都表現很好，不需要為大色差改用 CIELAB。**
> 畫成圖：**CIEDE2000 是一條直線；CIELAB 在大色差處斜率會突然變化**。

---

## 6. 感知性 vs 可接受性橢圓（00:23:14–00:25:15）

| | **Perceptibility 感知性** | **Acceptability 可接受性** |
|---|---|---|
| 任務 | **用數值尺度判斷色差有多大** | **pass / fail 判定** |
| 內容 | 純粹的視覺差異 | **含有商業偏差（commercial bias）** |
| 場合 | 學術研究 | **業界驗收**（「這是客戶標準，我判它過還是不過」） |

老師的 BFD 資料包含**兩種**（圖上以紅、藍區分），共 132–136 個橢圓。

**再次強調 CIELAB 的三大缺陷**：
1. 中性區橢圓**很小**，高彩度區橢圓**很大**（差距可達 **10 倍**）
2. 橢圓大多**指向原點**
3. **只有藍區不指向原點** → 需要旋轉項

---

## 7. ★★★ CAM02-UCS（00:25:46–00:32:58）明天的預告，但這裡先給結論

### 7-1 CIECAM02 是什麼
**CIECAM02 = CIE Colour Appearance Model 2002**

```
輸入：
  XYZ        （樣品）
  Xw Yw Zw   （參考白）
  L_A        （適應亮度）
  Y_b        （背景）
  Surround   （周圍條件：average / dim / dark）
      ↓
輸出（七個色貌屬性）：
  Q  Brightness 明亮度
  J  Lightness  明度
  M  Colourfulness 鮮豔度
  C  Chroma     彩度
  s  Saturation 飽和度
  h  Hue angle  色相角
  H  Hue composition 色相組成
```

> **★ 老師的漂亮框架（00:26:53）：**
> **「其實 CIELAB 本身也是一個色貌模型——
> 它也是輸入 XYZ 加上參考白 XwYwZw，輸出色貌屬性。」**
> （只是 CIELAB 少了 L_A、Y_b、surround 這三個觀看條件參數。）

### 7-2 ★★ 判斷「均勻色空間」的兩個標準（00:28:23）老師明說「重要考題」
他當場考學生，學生只答對一半：

```
標準①：每個橢圓都要接近「正圓」（circle）        ← 只答這個 = 50 分
標準②：★ 所有橢圓的「大小」在各色區都要一樣      ← 另外 50 分
```

**實測結果**：
| | CIELAB | CAM02-UCS |
|---|---|---|
| 形狀 | 有的很長很扁 | **幾乎都是圓** |
| 大小 | **相差約 10 倍** | **各區大小接近** |

### 7-3 三個版本
**教材「CIECAM02 Uniform Colour Space」原文：**
```
· Large and small colour difference data have different characters
   – ★ Lightness difference is more noticeable than chromatic difference
     by 50% for LCD.
   – ★ Chroma difference in low chroma region is twice as that in
     high chroma region

· CIECAM02 was extended to fit the LCD and SCD data sets.
   – ★ CAM02-SCD;  CAM02-LCD;  CAM02-UCS

· CAM based colour difference formula has a major advantage:
   – Taking into account the change of viewing conditions such as
     illuminant, luminance, background, surround, etc
```

> ### ★★★ 為什麼「大色差」與「小色差」要分開配？——投影片給了兩個具體發現
> | 發現 | 投影片原文 | 意思 | 造成的後果 |
> |---|---|---|---|
> | **①** | **`Lightness difference is more noticeable than chromatic difference by 50% for LCD`** | **大色差時，明度差比色度差顯眼 50%** | **明度項要加權** → 這就是 §8-4 影像用 **`K_L = 2`** 的同一個現象 |
> | **②** | **`Chroma difference in low chroma region is twice as that in high chroma region`** | **低彩度區的彩度差，感覺是高彩度區的兩倍** | **彩度項的權重要隨 C 遞減** → 就是 `S_C = 1 + 0.045C` 那一類函數的來源 |
>
> **★ 發現 ① 只在 LCD 成立，② 是通則** —— 這就是為什麼**一套參數配不了兩種尺度**，
> 必須拆成 SCD 與 LCD 兩個版本，再折衷出一個 UCS。

| 版本 | 用途 | 配適的資料 |
|---|---|---|
| **CAM02-SCD** | 小色差（small colour difference） | SCD 資料集（ΔE ≈ 0.55） |
| **CAM02-LCD** | 大色差（large colour difference） | LCD 資料集（ΔE ≈ 50） |
| **CAM02-UCS** ✅ | **兩者都能用**（不如專用版精準，但表現非常接近） | 兩者合併 |

> **★ 命名邏輯**：`SCD`/`LCD` 直接沿用 §5-2 那三個實驗資料集的名字。
> **所以 §5 的實驗（Wang, Cui and Luo）不只是為了驗證 CIEDE2000，
> 它同時是 CAM02-SCD / LCD / UCS 的訓練資料。** 一組資料，兩個用途。

**📌 原始論文與後續（2026-08 文獻補註）**
> **Luo, Cui & Li (2006), "Uniform colour spaces based on CIECAM02 colour appearance model", *Color Res. Appl.*（510 次引用）** —— 就是 LCD / SCD / UCS 這三個版本的出處。
>
> **★ 後續發展**：
> - **2017** → **CAM16-UCS**（Li et al.）取代 CAM02-UCS
> - **2022** → **CAM16-UCS 又被修訂**：Hellwig & Fairchild, *"Revising CAM16-UCS"*, **CIC30**。原因是他們改了 CAM16 的明度/彩度方程式（見 L17 §3b），UCS 必須跟著更新；同時修掉了現行 CAM16-UCS 公式的理論與統計不一致
> - 該論文**用 STRESS 推導新公式** —— 印證了本節出入第 2 點「PF/3 已被 STRESS 取代」

### 7-4 ★ CAM 基礎色差公式的最大優勢（00:31:25）
> **「不同照明體（A、4000K、5000K）都可以先轉換到標準參考照明體，
> 然後再判斷色差。
> 同時它也能反映背景效應（白背景、黑背景）、周圍條件（average / dim / dark）、
> 以及亮度水準（很亮或很暗）。」**

**→ 也就是說：CAM 天生就處理了「參數效應」，而 CIELAB 系列必須外掛修正。**

---

## 8. ★★ 影像色差（Image Colour Difference）（00:33:26–00:52:06）

**背景**：老師是 **CIE TC 8-02（影像色差評估）** 的主席。
> **「以前我們評色塊，現在要評影像。」**

**教材「Colour difference evaluation for images」原文：**
```
· ★ CIE TC8-02  Colour difference evaluation for images
· Add-on spatial filters to conventional formulae
· Formulae based on colour appearance model
· Image colour appearance model
```
> ### ★★ 影像色差的三條技術路線（由淺到深）
> | # | 投影片原文 | 做法 | 代表 | 本節哪裡講 |
> |---|---|---|---|---|
> | **①** | **`Add-on spatial filters to conventional formulae`** | **在既有公式前面外掛空間濾波器** —— 先把影像用 CSF 濾一遍，再逐像素套 ΔE | **★ S-CIELAB** | **§9-5** |
> | **②** | **`Formulae based on colour appearance model`** | 把色差公式的底換成色貌模型 | **CAM02-UCS + K_L=2** | §7、§8-4 |
> | **③** | **`Image colour appearance model`** | **整個模型從頭為影像設計**（同時處理空間與色貌） | **iCAM**（Fairchild & Johnson, 2002） | 老師課堂未展開 |
>
> **★ 三條路線的差別是「改動的深度」**：
> ```
> ① 不動公式，只在前面加濾波器        ← 成本最低、最容易被採用
> ② 換掉底層色空間（CIELAB → CAM02）  ← 順便解決觀看條件問題
> ③ 重新設計整個模型                  ← 最徹底，但最難標準化
> ```
> **老師（TC 8-02 主席）在課堂上主推 ①（S-CIELAB）與 ②（CAM02-UCS + K_L=2），
> 因為這兩條路才有機會寫進標準。** ③ 只列在投影片上、沒有展開。

### 8-0 ★★ TC 8-02 用的六個資料集（教材「Data Sets」原文）
```
· CRT
   1. Stokes - RIT (1991)
   2. Song - Derby (1999)
· CRT and Print
   3. Gibson, Fairchild and Wright - RIT (2000)
· Print
   4. Uroz - Derby (2001)
   5. Sano - Derby (2002)
   6. HP - Barcelona (2003)
```
| # | 資料集 | 年 | 機構 | **媒材** |
|---|---|---|---|---|
| 1 | **Stokes** | 1991 | RIT | **CRT** |
| 2 | **Song** | 1999 | **Derby**（老師的實驗室） | **CRT** |
| 3 | **Gibson, Fairchild & Wright** | 2000 | RIT | **CRT + Print** |
| 4 | **Uroz** | 2001 | **Derby** | **Print** |
| 5 | **Sano** | 2002 | **Derby** | **Print** |
| 6 | **HP** | 2003 | Barcelona | **Print** |

> **★ 注意按「媒材」分組，不是按年份**：`CRT → CRT+Print → Print`。
> **這正是參數效應清單第 4 項 `Surface vs self-luminous colours`**（見 §2-0）——
> **螢幕（自發光）與印刷（表面色）的色差表現不同，所以資料必須分開標示。**
> **★ 六個資料集裡有三個出自 Derby（Song、Uroz、Sano）** —— 都是老師自己實驗室的學生做的。

### 8-1 標準測試影像的選擇
**教材「Sano Data - Test Images」原文：**
```
· Standardised images
   – ISO/TC130   SHIPP
   – JIS XYZ     SCID
[ Picnic ]  [ Fruit ]  [ Harbor ]  [ Wool ]
```
> **★ 兩套標準影像集的來源**：
> - **`SHIPP`** ← **ISO/TC130**（印刷技術委員會）
> - **`SCID`** ← **JIS XYZ**（日本工業標準）
>
> **★ 關鍵觀念：測試影像必須用「標準化影像（standardised images）」，不能自己隨便拍。**
> 理由和 L05 的物理標準品完全一樣 —— **要跨實驗室比對，就必須用同一組參考物。**
> 陶瓷標準磚之於分光儀 = SCID/SHIPP 之於影像色差研究。

資料集來源：**SCID（日本）**、**SHIPP / ISO 標準影像**
選了四張，各有明確理由：

| 影像 | 代號 | 為什麼選它 |
|---|---|---|
| **Picnic 野餐** | **P** | **草地、藍天、白人/亞洲人/非洲人三種膚色** |
| **Fruit 水果** | **F** | 室內、**高對比（很亮與很暗都有）**、**記憶色** |
| **Harbour 港口** | **H** | 藍天、建築物色彩（丹麥拍的著名港口） |
| **Wool 毛線** | **W** | **高飽和度色彩**（紅綠黃藍橙紫都有） |

> **★ 選測試影像的三個原則：**
> **① 包含重要的記憶色 ② 高動態範圍 ③ 飽和色**

### 8-2 ★★★ 影像「劣化」的四種變換（教材「Transform function (Lightness, Chroma and Hue)」原文）
```
Function  | Multiplicative1   | Multiplicative2      | Power              | Additive Offset
----------|-------------------|----------------------|--------------------|------------------
Formula   | Out = a·In        | D2 = a·D1            | Out = 100(In/100)^b| Out = In + off
Apply on  | Lightness, Chroma | Lightness and Chroma | Lightness          | Hue
Abbr.     | ★ CM, LM          | ★ LCM                | ★ LP               | ★ HO
```
| 代號 | 全名 | 公式 | 作用在 | 物理對應 |
|---|---|---|---|---|
| **LM** | **L**ightness **M**ultiplicative | `Out = a·In` | 明度 | 整體變亮/變暗 |
| **CM** | **C**hroma **M**ultiplicative | `Out = a·In` | 彩度 | 整體變豔/變淡 |
| **LCM** | **L**ightness-**C**hroma **M**ultiplicative | **`D2 = a·D1`** | 明度 **與** 彩度 | **★ 縮放的是「與參考點的距離 D」** → 所有顏色一起往白點推，像油墨變淡 |
| **LP** | **L**ightness **P**ower | `Out = 100(In/100)^b` | 明度 | **gamma 變化** |
| **HO** | **H**ue **O**ffset | `Out = In + off` | **色相** | **偏色（加法位移）** |

> **★★ 注意這五個代號（CM / LM / LCM / LP / HO）在後面的比較表裡是列名，必須認得。**
>
> **★ 設計上的巧思**：四種變換剛好對應四種**數學運算**——
> ```
> 乘法（Multiplicative）  → 比例失真
> 「差值」的乘法（D2=a·D1）→ 對比 / 飽和度失真
> 冪次（Power）           → 非線性 / gamma 失真
> 加法（Additive）        → 位移 / 偏色
> ```
> **並且刻意讓「明度」被三種方式各打一次（LM、LCM、LP），色相只有一種（HO）。**
> 這不是隨意的：**明度是影像品質的主要維度**，所以要用多種方式測它。
> 後面 §8-4 的資料也證實 —— **LM 是所有公式表現最差的那一列。**
>
> **★ 為什麼色相用「加法」而不是乘法？** 因為**色相角是循環量（0°–360°）**，
> 乘法沒有意義（乘以 2 會把 200° 變成 400° = 40°，跳到別的色相去），
> **只有加法位移才是色相上唯一自然的運算**（呼應 L13：`Δh` 不能直接當距離用）。

每種變換各取約 **9–10 個等級（例如 k = 0.1 ~ 0.9）** → **一張原圖產生 36 個版本**。

### 8-3 實驗與分析
- 呈現：**原圖 vs 劣化版**，問「**一樣還是不一樣？**」
- 收集比例 → **50% 的人說看得出差異的那一點 = 閾值**（例如 ΔE ≈ 5.5）
- **★ 影像 ΔE 的算法：逐像素（pixel by pixel）計算 ΔE，然後取平均。**
  （一百萬像素 → 一百萬個 ΔE → 平均）

### 8-4 ★★★ 最重要的結論：影像要用 K_L = 2

先解釋 **K_L / K_C / K_H（parametric factors）**：
```
ΔE = √[ (ΔL/(K_L·S_L))² + (ΔC/(K_C·S_C))² + (ΔH/(K_H·S_H))² + ... ]

K_L = 2 表示「明度差的重要性只有彩度差與色相差的一半」
```

**實測結果**：
> **★ 判斷影像時，明度的閾值總是比較大（人比較不敏感）；
> 彩度與色相的閾值比較小（人比較敏感）。**

**建議設定**：
```
K_L = 2 , K_C = 1 , K_H = 1     →  即 ΔE₀₀(2:1:1)
```
- **ΔE₀₀(2:1:1)** 表現最好
- **ΔE\*ab(2:1:1)** 表現也相當接近

### ★★★★ 硬數據：教材「Colour difference formulae comparison」
**評估指標：`Coefficient of variation (CV) = 100 × stdv / mean`，★ 越小越好**
```
           ΔE*ab  ΔE00     ΔE00     ΔEcmc    ΔEcmc    ΔE*94    ΔE*94
                 (KL=1)  ★(KL=2)   (KL=1)   (KL=2)   (KL=1)   (KL=2)
  CM         38     56       19       44       55       37       48
  HO         19      9        7       22       17       21        4
  LCM        25     11        4       25       19       28       18
  LM         57     45       27       63       54       58       42
  LP         48     40       26       50       32       45       33
─────────────────────────────────────────────────────────────────────
  Overall    37     31     ★ 16       40       33       38       28
```
> **★ 投影片上 `ΔE00 (K_L=2)` 那一整欄被紅框框起來 —— 這就是結論。**

**★★★ 這張表要看出四件事：**

**① K_L=1 → K_L=2，整體 CV 直接砍半：`31 → 16`**
```
CIELAB              37
CIEDE2000 (KL=1)    31    ← 只比 CIELAB 好一點
CIEDE2000 (KL=2)    16    ← ★ 好一倍
```
> **「影像要用 K_L = 2」不是建議，是資料逼出來的。**

**② K_L=2 對「每一個」公式都有效，不只 CIEDE2000**
```
ΔE00 :  31 → 16   （改善 48%）
ΔEcmc:  40 → 33   （改善 18%）
ΔE*94:  38 → 28   （改善 26%）
```
> **★ 這是最強的論證**：如果只有 CIEDE2000 變好，可能是 CIEDE2000 的參數湊巧；
> **三個結構完全不同的公式同時變好 → 說明這是「人眼對影像明度差不敏感」這個
> 視覺事實，而不是任何一條公式的性質。**

**③ `LM`（明度乘法失真）永遠是最難的一列**
```
LM 這一列：  57  45  27  63  54  58  42     ← 每個公式的最大值都在這裡
```
> **所有色差公式在「影像整體變亮/變暗」這種失真上都表現最差。**
> **這正是需要 K_L 的原因**：問題出在明度項，所以修正也加在明度項。
> （對照 §8-2：明度被 LM / LCM / LP 三種方式各測一次，就是為了逼出這個弱點。）

**④ ⚠️ 一個反直覺、但很誠實的數字：`CM` 那一列，CIEDE2000(K_L=1)=56 比 CIELAB 的 38 還差**
> **在「彩度乘法失真」上，未調參數的 CIEDE2000 表現不如 CIELAB。**
> 只有把 K_L 調到 2 之後才變成 19（大勝）。
>
> **★ 這件事的意義**：**CIEDE2000 是為「色塊、小色差」配的**（參考條件 `<5 ΔE*ab`，見 §2-1）。
> **把它原封不動搬到影像上，可能比 CIELAB 更糟。**
> 呼應 L13 那張沒講到的投影片：`Textile (no significant improvement from CMC)` ——
> **公式離開它的訓練條件就會退化，這是參數效應的本質。**
> **不要背「CIEDE2000 永遠最好」，要背「CIEDE2000 在其參考條件下最好；離開條件必須調參數因子」。**

### ★★ 這個結論是怎麼被驗證的：TC 8-02 的國際循環比對
```
TC 8-02 Ring test

· Sano's samples were used including ★ 164 pairs
· Work was carried out at:
   – CII         by Sano     using ★ 11 observers
   – HP (Barcelona) led by Uroz     using ★ 7×2 observers
   – FujiFilm    led by Takemura using ★ 15 observers
   – HP (Bousie) led by Gibson   using ★ 5 observers

Data Set   CII-Sano   HP-Barcelona   FujiFilm    HP-Bousie
Interval   May/02     March/03       July/03     Sept./03
```
> **★ 什麼是 Ring test（循環比對試驗）？**
> **同一組樣品（Sano 的 164 對）寄到不同實驗室，各自用自己的觀察者重做一次，比對結果是否一致。**
> 這是**跨實驗室再現性**的標準驗證手法（同 L05 講儀器時的四大實驗室比對邏輯）。
>
> **★ 四個實驗室、橫跨 16 個月（2002/05 → 2003/09）、三大洲**
> （日本 CII、西班牙 HP Barcelona、日本 FujiFilm、美國 HP Boise）。
> **這就是一個 CIE 技術委員會真正在做的事** —— 不是提出公式，是**證明公式在別人手上也成立**。

> ### ⚠️★ 但 Ring test 的結果並不完美
> **「Comparing Thresholds Between Sano and HP-Barcelona Data」的迴歸線：**
> ```
> y = 0.7663 x        R² = 0.6818
> ```
> - **斜率 0.77** → **HP-Barcelona 量到的閾值系統性地比 Sano 低約 23%**
> - **R² = 0.68** → **兩個實驗室之間只解釋了 68% 的變異**
>
> **★ 這個數字要老實看待**：即使用同一批樣品、同一個實驗設計，
> **不同實驗室之間的視覺閾值仍有相當大的分歧。**
> 呼應老師在 L08 講的**「觀察者差異的四個原因」**與 L05 的不確定度觀念 ——
> **視覺實驗的再現性，遠低於儀器量測的再現性。**
>
> **★ 另一張 教材 的圖說寫著：`CIEDE2000 slightly better than CIELAB.`**
> **「slightly（略為）」這個字用得很誠實** —— 在 Sano 資料上，
> CIEDE2000 只是「略優於」CIELAB，不是壓倒性勝出。**真正拉開差距的是 K_L=2。**

### ★★★ 十年後的獨立確認：Liu et al. (2012) – Printed Images
```
              CIELAB (1:1)   CIELAB (1.5:1)        DE2000 (1:1)   DE2000 (2.23:1)
   STRESS         31              31                    41             29
   R              0.85            0.91                  0.75           0.92

   12 × 3 Observations
   5 × 20 = image pairs
```
| 公式 | K_L = 1 | **調整後** | 改善 |
|---|---|---|---|
| **CIELAB** | R = 0.85 | **(1.5 : 1)** → R = **0.91** | 最佳 K_L ≈ **1.5** |
| **CIEDE2000** | R = 0.75，STRESS = **41** | **(2.23 : 1)** → R = **0.92**，STRESS = **29** | 最佳 K_L ≈ **2.23** |

> **★★ 三個重點：**
>
> **① 不同公式的最佳 K_L 不同**：CIELAB 要 **1.5**，CIEDE2000 要 **2.23**。
> **所以「K_L = 2」是 CIEDE2000 的近似值，不是一個放諸四海的常數。**
> 考試寫 `K_L = 2`（老師的建議值）；**做研究要自己配。**
>
> **② 又一次出現「未調參數的 CIEDE2000 比 CIELAB 差」**：
> `DE2000(1:1) STRESS = 41` **輸給** `CIELAB(1:1) STRESS = 31`。
> 和 §8-4 第 ④ 點的 CM 那一列是同一個現象，**十年後、換一批人、換成印刷樣品，結論不變。**
>
> **③ ★ 這張投影片用的指標是 `STRESS`，不是 PF/3。**
> 老師在 2002 年的研究用 **CV / PF/3**，2012 年的研究已經改用 **STRESS**
> —— **直接印證本節出入第 2 條「PF/3 已被 STRESS 取代」。**
> **寫論文請用 STRESS**（CIE 頒布於 2007，Garcia, Huertas, Melgosa & Cui）。

### ★ 影像色差的實用閾值
「Comparing ΔE\*ab thresholds between different data sets」的長條圖顯示：
```
跨 Stokes / Song / Sano / HP-Barcelona 四個資料集，
四種失真（LM / LP / CM / HO）的 ΔE*ab 閾值大約落在 1.5 – 3.2 之間
```
> **★ 記憶點：影像的「剛好看得出差別」大約是 ΔE\*ab ≈ 1.5–3。**
> 比色塊的閾值（≈ 1）大 —— **因為影像有紋理、有內容，會分散注意力**（呼應 §9-7）。

**驗證**：
- 多個資料集：**Stokes（RIT）、Song（Derby）、Gibson（RIT）、Uroz（Derby）、Sano（日本 NEC，老師在 Derby 的學生）、HP Barcelona、HP Boise、Fujifilm**
- **北京印刷學院**的獨立實驗（5 張影像、20 對、12 位觀察者 × 3 次）也得到相同結論：
  **K_L = 1 時明度組與彩度組的資料點分成兩條線；K_L 調到 1.5–2.2 後兩組合併成一條直線。**

---

## 9. ★★★ 空間色差與 S-CIELAB（00:52:06–01:10:06）

### 9-1 為什麼要考慮空間
> **「銳利的影像與模糊的影像，色差判斷完全不同。
> 解析度、清晰度會大幅影響色差的判斷。」**

**Blurring 模糊的定義**（教材「What is Blurring?」原文）：
```
Blurring is the selective reduction of contrast in the ★ HIGH SPATIAL FREQUENCIES
```
> **★ 完整定義是「在『高空間頻率』上的選擇性對比降低」——「高空間頻率」這五個字不能漏。**
> **「選擇性」的意思就是：只砍高頻，低頻不動。**
> 這正是為什麼 **模糊 = 低通濾波**，也是 S-CIELAB 用低通濾波器模擬人眼的理由（§9-5）。
> **投影片配了三張同一個走廊的照片，從清晰到模糊排下來**，是很直觀的示範。

### 9-2 對比的定義：Michelson Contrast
```
Michelson Contrast = (L_max − L_min) / (L_max + L_min)
```
**老師的例子**：亮 52、暗 48 → (52−48)/(52+48) = **4%**
**對比敏感度 = 1 / 對比** → 1/0.04 = **25**

### 9-3 空間頻率 Spatial Frequency（CPD）★ 會考的計算
```
單位：cycles per degree（CPD，每度週期數）
```
**教材「Defining Contrast and Spatial Frequency」原文（★ 完整的計算範例）：**
```
8 cycles  per 50cm
400cm  （觀看距離）

q = 2 arctan(25/400) = 7.15°
sf = 8/7.15 = 1.1 cycles per degree

C = (L_max − L_min)/(L_max + L_min)      ← Michelson Contrast
```
**老師的計算範例（逐步）**：
```
① 螢幕上有 8 個 cycle，圖寬 50 cm，觀看距離 400 cm
② 取「半寬」25 cm（因為 arctan 從中心量到邊緣）
      θ = 2 × arctan(25 / 400)
        = 2 × arctan(0.0625)
        = 2 × 3.576°
        = 7.15°                    ← 整張圖張開的視角
③ SF = 8 cycles / 7.15° = 1.1 CPD
```
> **★★ 考試最容易錯的一步是「除以 2」**：
> **`arctan` 裡面要放「半寬 / 距離」，算完再乘 2**，
> 因為三角函數量的是從中心到一邊的直角三角形。
> 若直接寫 `arctan(50/400)` 會得到 7.13°，數值上很接近（因為角度小），**但觀念是錯的**；
> 距離拉近時誤差會迅速變大。
>
> **★ 記憶口訣**：`θ = 2·arctan( 半寬 ÷ 距離 )`，然後 `SF = 週期數 ÷ θ(度)`。
>
> **改變 cycle 數或改變觀看距離，空間頻率就變了。**
> ```
> 距離加倍（400 → 800 cm）→ θ 減半（7.15° → 3.58°）→ SF 加倍（1.1 → 2.2 CPD）
> ```
> **→ 這就是「站遠一點就看不出網點」的數學**：距離拉遠 → SF 升高 → 超過 CSF 的截止頻率（≈60 CPD）→ 看不見。

### 9-4 ★★ CSF（Contrast Sensitivity Function 對比敏感度函數）
**教材「How to Measure Contrast Sensitivity?」原文：**
```
Find the contrast at threshold of detection
   e.g.  L_min = 48;  L_max = 52
   C = (L_max − L_min)/(L_max + L_min) = 4/100 = 4%
   ★ S = 1/C = 100/4 = 25

Threshold detection experiments can be carried out for a number of different
spatial frequencies and when the sensitivity is plotted against spatial
frequency we have the CSF.
```
> **★ 定義要背清楚：`敏感度 S = 1 / 閾值對比 C`**（取倒數）。
> **閾值越低 = 越容易看見 = 敏感度越高。**
> 這和 L09 的 **Weber fraction** 是同一種思路：**用「剛好能察覺的量」的倒數來衡量敏感度。**

把**對比敏感度**對**空間頻率（對數尺度）**作圖：

| 通道 | 形狀 | 峰值 | 投影片證據 |
|---|---|---|---|
| **亮度（luminance）** | **帶通（band-pass）** | **★ 恰好 4 CPD**（見下方推導） | `s053` 圖上直接標註 **`Band-pass shape`** |
| **色度（chromatic：紅-綠、黃-藍）** | **低通（low-pass）** | **沒有峰值**，從 DC 開始就是最高 | `s054 / s056` **標題就是 `The Chromatic CSF is low-pass`**，資料出自 **Mullen, 1985** |

> **★★ 這兩張教材直接解決了我筆記裡的矛盾（本節出入第 1 條 / A8）**：
> 老師在課堂上有一次口誤說亮度 CSF 是「high-pass」，
> **但投影片白紙黑字寫 `Band-pass shape`** —— **投影片是對的，那是純口誤。**
>
> **★ `s053` 還引了一句話**（Brainard, 1996）：
> *"…detection thresholds vary between observers, with the background, and with the
> spatial and temporal properties of the stimulus…"*
> —— **CSF 不是一條固定的曲線**，它隨觀察者、背景、刺激的時空性質而變。
> **又是參數效應（§2-0）在視覺層次的體現。**

> **★ 這解釋了一個關鍵現象：人眼對「亮度」的空間細節遠比對「顏色」的空間細節敏感。**
> （這正是 JPEG、影像壓縮採用 **色度次取樣 4:2:0** 的生理基礎——雖然老師沒明說。）

### 9-4b ★★★★ CSF 的實際公式與全部係數（教材「Calculation of Spatial Filters」原文）
**這一張是可以直接寫成程式的東西。**

**亮度通道**
```
CSF_lum(f) = 75 · f^0.8 · e^(−0.2 f)          f 的單位 = cycles per degree
```
**色度通道（紅-綠、黃-藍各一組參數）**
```
CSF_chrom(f) = a₁ · e^(b₁ · f^c₁)  +  a₂ · e^(b₂ · f^c₂)
```
| 參數 | **Red-Green** | **Blue-Yellow** |
|---|---|---|
| **a₁** | 109.1413 | 7.0328 |
| **b₁** | −0.0004 | 0.0000 |
| **c₁** | 3.4244 | 4.2582 |
| **a₂** | 93.5971 | 40.6910 |
| **b₂** | −0.0037 | −0.1039 |
| **c₂** | 2.1677 | 1.6487 |

> ### ★★★ 從這兩條式子可以「證明」帶通 vs 低通 —— 不必看圖
>
> **① 亮度 CSF 在 f = 0 時等於 0 → 必為帶通**
> ```
> CSF_lum(0) = 75 · 0^0.8 · e^0 = 0     ← DC 響應為零
> ```
> **② 亮度 CSF 的峰值恰好在 f = 4 CPD（一行微分）**
> ```
> ln S = ln 75 + 0.8 ln f − 0.2 f
> d(ln S)/df = 0.8/f − 0.2 = 0
>            → f = 0.8 / 0.2 = ★ 4 cycles per degree
> ```
> **→ 峰值精確落在 4 CPD。** 我原本寫「約 4–5 CPD」，**現在可以直接寫 4**。
>
> **③ 色度 CSF 在 f = 0 時不等於 0 → 必為低通**
> ```
> f = 0 → f^c = 0（c > 0）→ e^0 = 1
> CSF_chrom(0) = a₁ + a₂
>   Red-Green   : 109.1413 + 93.5971 = ★ 202.74
>   Blue-Yellow :   7.0328 + 40.6910 = ★  47.72
> ```
> **兩者都在 DC 取得最大值、且之後單調下降 → 低通。** ✅
>
> **④ ★★ 紅綠通道的 DC 敏感度是黃藍通道的 4.2 倍（202.74 / 47.72）**
> **這正是「黃藍通道的空間解析度最差」的量化版本。**
> 生理上的原因在 **L07**：**S 錐（藍）數量最少（L:M:S ≈ 2:1:1/20）、且中央窩幾乎沒有 S 錐**，
> 所以黃藍通道天生就沒有高空間頻率的能力。
> **→ 一條 CSF 曲線的係數，直接對應到視網膜上的錐細胞數量比。**

> **⚠️ 一個小疑點**：`Blue-Yellow` 的 `b₁ = 0.0000`。
> 代入後第一項變成常數 `7.0328`（永遠不衰減），數學上不合理。
> **極可能是一個很小的負數被四捨五入成 0（例如 −0.00004）。**
> 由於它只佔 DC 值的 15%（7.03 / 47.72），對整體形狀影響有限，
> **但要精確實作的話，這個係數要回去查原始文獻。**

### 9-5 S-CIELAB（Wandell, Stanford）★
**教材「Spatial Based Colour Difference Formula — S-CIELAB Model」的方塊圖：**
```
Original Image ─▶ Color Separation ─▶ Spatial Filtering ─▶ Standard CIELAB ─▶ S-CIELAB
                       ↓                     ↓              Calculation        representation
                  Opponent                                       ↑
                  representation ─────────────────────────▶ XYZ representation
```
**四個階段（投影片的四個標題，答題就寫這四個）**：
```
① Color Separation      色彩分離 → 轉到對立色表示（opponent representation）
② Spatial Filtering     空間濾波 → 三個通道各套自己的 CSF
③ （轉回 XYZ representation）
④ Standard CIELAB Calculation  → 用「標準的」CIELAB 算 ΔE
```

**流程**：
```
原始影像 (RGB)
   ↓ ★ RGB to XYZ Matrix
XYZ
   ↓ ★ XYZ to Forward Wandell opponent space
分解成三個對立通道：亮度 / 紅-綠 / 黃-藍
   ↓ ★ 各自套用對應的 CSF 空間濾波器（9-4b 那組公式）
（亮度用帶通、色度用低通）
   ↓ ★ Forward Wandell opponent space to XYZ
重組回 XYZ  → 得到「模糊過的」影像
   ↓
轉成 CIELAB，逐像素算 ΔE
```
> **這就是 S-CIELAB（Spatial CIELAB）。**
>
> ### ★★ 這個設計最聰明的地方：**第 ④ 步是「Standard CIELAB Calculation」**
> **S-CIELAB 完全沒有改動 CIELAB 或色差公式本身**，
> 它只是在**前面加了一段前處理**（分離 → 濾波 → 合回去）。
> 這正是 §8-0 三條路線裡的第 ① 條：**`Add-on spatial filters to conventional formulae`**。
> **好處**：既有的 CIELAB / CIEDE2000 工具鏈、既有的產業標準、既有的容差值**全部照用**，
> 只是餵進去的影像先被「人眼化」了一遍。**這是它能被廣泛採用的關鍵。**
>
> **★ 一句話總結 S-CIELAB 在做什麼**：
> **「先讓影像通過一個模擬人眼的模糊濾波器，再去算色差」**
> —— 因為**人眼看不見的高頻差異，不該被算進色差裡**。

> **濾波器在 3D 上看**（教材「Filters' 3D views」，三張曲面圖）：
> ```
> a  Luminance channel     ← 最窄最尖（保留最多高頻細節）
> b  Red-Green channel
> c  Yellow-Blue channel   ← 最寬最鈍（濾掉最多細節）
> ```
> **★ 空間域裡「越寬 = 頻域裡越低通 = 模糊得越厲害」。**
> 三張圖的寬窄順序（亮度 < 紅綠 < 黃藍）正好是 9-4b 那組係數的視覺化：
> **黃藍通道的 DC 敏感度最低、衰減最快 → 空間域的核最寬。**
> 同一組濾波器**正向可以模糊、反向可以銳化**。

### 9-6 ★★★ 老師的殺手級示範（01:05:52–01:09:33）
給三張圖：中間是原圖，左右各一張複製版。
```
兩張複製版的「平均 ΔE 都是 5.8」——完全一樣的數字
但看起來差非常多！
```
**為什麼？**
- 一張是**把人物的膚色改亮**（背景不動）
- 另一張是**把背景全部改掉**（膚色不動）
- **老師是刻意把兩者的平均 ΔE 調成相同的。**

> **★ 結論：「只用平均 ΔE 是做不好的，因為它完全不考慮顏色所在的『位置』。」**

**改用 S-CIELAB 之後**：其中一張變成 **ΔE = 7.1**，另一張較小 → **成功區分開來**。
> **「這就是空間濾波器的威力。」**

### ★★★★ 精確數字（教材原文對照）
```
投影片 s061「Image Difference」          ← 傳統 CIELAB，逐像素平均
    ΔE*ab = 5.8      Original      ΔE*ab = 5.8
                                    ↑ 兩張一模一樣的數字，完全無法區分

投影片 s062 / s065「Spatial Image Difference」  ← S-CIELAB
    ΔE*ab = 4.8      Original      ΔE*ab = 7.1
                                    ↑ 成功分開，而且方向與人眼判斷一致
```
| | 左圖 | 右圖 | 能不能分辨？ |
|---|---|---|---|
| **Image Difference（傳統）** | **5.8** | **5.8** | ❌ **完全分不出來** |
| **Spatial Image Difference（S-CIELAB）** | **4.8** | **7.1** | ✅ **差 1.5 倍** |

> ### ★★★★ 這一組數字就是 S-CIELAB 存在的全部理由，值得整組背下來
> **同樣兩張圖、同樣的原圖：**
> - **傳統做法**給出 `5.8 = 5.8`，**等於說「這兩張劣化程度一樣」——但人眼一看就知道不一樣。**
> - **S-CIELAB** 給出 `4.8 vs 7.1`，**把人眼看得出來的差距量化出來了。**
>
> **★ 為什麼傳統做法會失敗？**
> 因為 **逐像素平均把「哪裡變了」的資訊完全丟掉了**：
> ```
> 一張：膚色（低頻、大面積、人眼最敏感的記憶色）被改亮
> 另一張：背景（高頻、雜亂、人眼不注意）被改掉
> 平均下來 ΔE 相同 → 但人眼的反應天差地遠
> ```
> **S-CIELAB 的低通濾波器做了一件事：把高頻的背景差異「抹掉」，保留低頻的膚色差異。**
> 於是背景那張的 ΔE 降到 4.8，膚色那張升到 7.1。
>
> **★ 一句話：CSF 濾波器 = 「先把人眼看不見的差異刪掉，再算色差」。**
>
> **★★ 這也是回答「為什麼平均 ΔE 不夠」最有力的具體例證**，
> 比任何抽象論證都好用 —— **考試或報告裡直接引 `5.8 = 5.8 → 4.8 vs 7.1` 這組數字。**

### 9-7 注意力與感興趣區域（01:10:06–01:14:08）
**實驗一：`Leeds Experiment – Wang and Luo`**
- 介面：**左右兩張影像，下方一對灰色塊 + 一條滑桿**
- 讓觀察者**調整那對灰色塊的差異**，直到「灰色塊的差異 ≈ 兩張影像的差異」
  → **把影像差異換算成 ΔE**
  > **★ 這是 L10 講的「匹配法（matching method）」的漂亮應用**：
  > **人很難直接說「這兩張圖差 4.8」，但很會說「這兩塊灰跟那兩張圖差不多」。**
  > **→ 用一個「可量測的替代刺激」去承接一個「難以量化的判斷」。**
- 同時請他們**標出「哪個區域差最多」** → 例如某張圖的**氣球佔 68%**
- **教材「Filtering」展示兩張輸出圖**：
  ```
  Salient map（顯著圖）      ← 哪些區域吸引注意
  Weighting effects（加權效果）← 據此對 ΔE 加權後的結果
  ```

**實驗二：`NYUST Experiment – Guan and Tsai`**
> **★ NYUST = 國立雲林科技大學（National Yunlin University of Science and Technology）
> —— 這是一個台灣的合作研究，對台灣的學生特別值得知道。**
```
· 30 normal colour vision observers
· Viewing a 30" display
· Assessing toal and colour image quality      ← "toal" 是投影片錯字，應為 total
· 11 images
[投影片配了兩張照片：頭戴式眼動儀的結構圖 + 受測者坐在螢幕前的實景]
```
- **眼動儀（eye tracker）**、**30 位觀察者**、**30 吋螢幕**、**11 張影像**
- **★ 評估的是兩件事**：**整體影像品質（total）** 與 **色彩影像品質（colour）**——分開問
- **結果**：
  - **人幾乎只看「臉部/膚色」**——花朵、背景**完全不看**
  - 若畫面主體是中性物體，**人就看畫面中央**
  - **周邊區域完全不受注意**

**★ 影像色差加權的兩種理論**：
| 理論 | 依據 |
|---|---|
| **感興趣區域（Region of Interest）** | 依**注意力**加權（膚色權重高） |
| **空間濾波（S-CIELAB）** | 依**面積/空間頻率**加權（大面積權重高——而膚色剛好是大面積） |

> **兩者殊途同歸：膚色既是注意焦點、又是大面積。**

---

## ⚠️ 名詞誤植對照

| 常見誤植 | 正確 |
|---|---|
| Magosa / Mercosa | **Melgosa**（西班牙 Granada 大學團隊） |
| Chris Pinin / crispening | **crispening effect** |
| C-CAMO2 / CamO2 / KMO2 | **CIECAM02 / CAM02-UCS** |
| SCD / STD（在 CAM02 後面） | **CAM02-SCD**（small colour difference） |
| "sample size larger than 40 degree" | **> 4 度** |
| Stokes / stroke data | **Stokes**（RIT 研究者） |
| Song Tao / Song / 松 | Song（老師在 Derby 的學生） |
| Gibson Belcher | **Gibson & Fairchild**（RIT） |
| you Ross / Uroz | **Uroz**（Derby） |
| DAPI | **Derby**（英國 Derby 大學，老師曾任教） |
| Sano | Sano（日本 NEC，老師的學生） |
| SHIP / SKID datasets | **SHIPP / SCID** 標準影像集 |
| Wondell | **Wandell**（Brian Wandell, Stanford） |
| cyan wave patterns | **sine wave patterns** 正弦波圖樣 |
| Michaelson contrast | **Michelson contrast** |
| Big C / Beijing Institute of the Graphic Institute | **北京印刷學院** |
| 惠普 HP Boise | HP 美國 Boise 廠 |
| hydrodynamic range | **high dynamic range (HDR)** |
| CITC 802 | **CIE TC 8-02** |
| CB unit / CV | **CV（變異係數）／PF/3** |

---

## 🔍 與標準說法的出入 / 需要留意

### 1. 亮度 CSF 是「帶通」不是「高通」⚠️（★ 2026-08-26 由投影片確認為純口誤，**投影片是對的**）
- 老師在 01:01:17 說 **"chromatic CSF is a low pass, and the luminance CSF is a high pass"**。
- **正確是 band-pass（帶通）** —— 他在前面 01:00:47 講對了（"this is what we call the bandpass shape"），後面口誤。
- **★ 教材 的圖上直接標註 `Band-pass shape`**，
  且 教材 的標題就是 **`The Chromatic CSF is low-pass`**（資料出自 **Mullen, 1985**）。
  **→ 這是 G 類（投影片正確、老師口誤），不是 A 類的知識錯誤。**
- **★ 而且可以用投影片自己的公式證明**（見正文 §9-4b）：
  ```
  CSF_lum(f) = 75 f^0.8 e^(−0.2f)
     f = 0 →  75 · 0^0.8 · 1 = 0        ← DC 為零，必為帶通
     峰值  →  0.8/f − 0.2 = 0 → f = 4 CPD
  CSF_chrom(0) = a₁ + a₂ ≠ 0             ← DC 非零，必為低通
  ```
  **→ 峰值精確在 4 CPD**（我原本寫「3–5」，現在可以寫死 4）。
- **完整正確描述**：
  | 通道 | 形狀 | 峰值 | 截止頻率 |
  |---|---|---|---|
  | **亮度** | **帶通 band-pass** | **3–5 CPD** | 約 **50–60 CPD** |
  | **紅-綠** | **低通 low-pass** | 無峰（DC 最高） | 約 **10–12 CPD** |
  | **黃-藍** | **低通 low-pass** | 無峰 | 約 **5–8 CPD** |
- **「亮度帶通、色度低通」是本節最該記住的一句話**，因為它同時解釋了 S-CIELAB、影像壓縮的色度次取樣、以及為什麼 K_L 該設 2。

### 2. PF/3 已被 STRESS 取代（★ 2026-08-26：老師自己的投影片就展示了這個轉換）
- 老師用的評估指標 **PF/3（Performance Factor）** 與 **CV** 是 1990–2000 年代的主流。
- **CIE 現在建議用 STRESS（STandardized REsidual Sum of Squares，García, Huertas, Melgosa & Cui, 2007）**，因為它有明確的統計意義（可做 **F 檢定**比較兩個公式是否顯著不同）。
- **★ 投影片本身就記錄了這個世代交替**：
  ```
  教材 / s036（2002 年的研究）→ 用 ★ CV  =  100 × stdv/mean
  教材      （Liu et al. 2012）→ 用 ★ STRESS
  ```
  **同一份投影片裡，早期研究用 CV、十年後的研究用 STRESS。**
- **★ 順帶一提**：STRESS 的作者群裡有 **Melgosa** 與 **Cui** ——
  **Cui 是 CIEDE2000 的共同作者、老師的學生；Melgosa 則是做 CIEDE2000 五項修正顯著性檢定的人（見 L13）。
  同一批人，先做公式，再做「怎麼公平比較公式」的工具。**
- 若你要寫論文，**用 STRESS**；讀老師這一代的文獻則會看到 PF/3、CV、γ、V_AB。

### 3. S-CIELAB 的原始作者
- 老師只說 "Professor Wandell at Stanford"。
- 完整出處：**Xuemei Zhang & Brian A. Wandell (1996), "A spatial extension of CIELAB for digital color image reproduction", SID Digest.**
- 後續發展：**iCAM（Fairchild & Johnson）**、**iCAM06（HDR 影像）**、**S-CIELAB 的各種改良版**。

### 4. Crispening effect 的完整定義
- 老師的實驗說明是對的，但定義可以更精確：
  > **當「刺激與背景的差異」很小時，「刺激之間的知覺差異」會被放大。**
- **不只發生在明度上**——彩度與色相也有 crispening（在同色相背景上比同色相樣品，差異會被放大）。
- 這是**評色燈箱必須用 N5/N7 中性灰**、以及**軟體比色介面預設灰底**的直接理由。
- 另外要與 **simultaneous contrast（同時對比）** 區分：crispening 是**差異被放大**，simultaneous contrast 是**顏色本身被推離背景**。兩者常同時發生。

### 5. 「嚴格說色差公式只能用在塗料」
- 老師這句話**技術上完全正確但實務上會嚇到人**。
- 現實：業界每天都拿 CIEDE2000 去評紡織、印刷、塑膠、顯示器。
- **正確的心態是：知道你已經偏離參考條件多遠，然後用 parametric factors 去補。**
  - 紡織 → 傳統上用 **CMC(2:1)**，因為它就是拿紡織資料擬合的
  - 影像 / 顯示器 → **ΔE₀₀(2:1:1)**
  - 大色差 / 色域映射 → **CAM02-UCS**

### 6. 「逐像素算 ΔE 再平均」的已知問題（老師用示範點出了，但值得寫成原則）
- **平均 ΔE 丟掉了三種資訊**：
  1. **空間位置**（膚色 vs 背景）→ S-CIELAB / ROI 加權解決
  2. **空間頻率**（大面積 vs 細節）→ CSF 濾波解決
  3. **分布形狀**（少數像素差很多 vs 全部差一點）→ 應同時報 **95th percentile ΔE** 或 **max ΔE**
- 實務建議：**同時報 mean ΔE、95% ΔE、以及 ΔE 的空間分布圖（error map）**。

### 7. CIELAB 也是色貌模型 —— 這個框架很好，但要知道界線
老師說「CIELAB 也是色貌模型」，這在教學上非常有用。更精確的層級是：
```
CIELAB     = 只做「白點正規化（Y/Yn 型的 von Kries 近似）」→ 只能算「色適應的一階近似」
CIECAM02   = 完整處理 適應亮度 L_A、背景 Y_b、周圍 surround、不完全適應 D
```
- **CIELAB 的「白點除法」其實是一個很差的色適應變換（Wrong von Kries）**，因為它在 **XYZ 空間**做除法而不是在**錐細胞空間**做——這是它在強烈變色照明下失效的根本原因。這一點明天的 Lecture 10 會處理。

---

## 📌 本節可能考點

1. **★ 列出色差公式的參考條件（reference conditions）**（至少 6 項）
2. **什麼是 parametric effect？為什麼需要 parametric factors？**
3. **★★ 什麼是 crispening effect？實驗怎麼做？結論是什麼？**（樣品明度接近背景明度時色差看起來最大）
4. 感知性（perceptibility）與可接受性（acceptability）的差別？
5. CIEDE2000 能不能用在大色差？（能，實驗證明各種大小都好）
6. **★★ 判斷一個色空間是否均勻的兩個標準？**（橢圓要圓、**而且大小要一致**）
7. CIECAM02 的輸入與輸出各有哪些？
8. CAM02-SCD / LCD / UCS 的差別？
9. **★★ 評估影像色差時 K_L 應該設多少？為什麼？**（K_L=2，明度差的重要性只有彩度/色相差的一半）
10. **★ Michelson contrast 公式？CPD 怎麼算？**
11. **★★ 亮度 CSF 與色度 CSF 的形狀差別？峰值在哪？**
12. **S-CIELAB 的處理流程？它解決了平均 ΔE 的什麼問題？**
