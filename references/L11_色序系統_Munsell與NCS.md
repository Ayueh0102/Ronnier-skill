# L11｜Lecture 7：色序系統（Colour Order Systems）——Munsell 與 NCS
**來源**：`2021-11-06 08-12-03.mp4`（00:00–01:09:01）｜Day 3 上午
**老師的定位（00:09:59）**：
> **「色序系統是所有『均勻色空間』的基礎——所以我今天先講它，再講色差公式。」**

---

## 0. 開場複習：色彩科學的三個階段（00:00–00:08:49）

| 階段 | 產出 | 產業需求 |
|---|---|---|
| ① **Colour Communication 色彩溝通** | **XYZ** | 用數字傳遞顏色 |
| ② **Colour Difference / Uniform Colour Space 色差 / 均勻色空間** | CIELAB、CIEDE2000 | 品管、容差 |
| ③ **Colour Appearance Model 色貌模型** | CIECAM02 / CAM16 | 早上拍的照片，晚上看要一樣 → **色彩管理** |

> **老師的敘事：「每一個階段都是產業提出需求——『我們需要新工具，CIE 請幫我們想辦法』——然後 CIE 交付。」**

**色彩科學家在做什麼（00:08:19）★**
```
色彩量測資料（儀器）  ─┐
                        ├──→  【建模】 ──→ 色差模型 / 色貌模型
視覺資料（心理物理）  ─┘
```

---

## 1. 什麼是色序系統（00:10:29–00:13:25）★ 四個定義

老師說「考試要抓關鍵字」，四種定義並列：

1. **一套將顏色分類的系統**（紅、黃、綠、藍…以及各自的範圍）
2. **依某種排列規則，把「色知覺」或「材料色樣」加以排列的安排**
   → 關鍵字：**colour perceptions**、**material colour samples**、**rules of arrangement**
3. **依三個屬性所構成的色彩世界之子集** → 即**座標系統**的概念（例如 Munsell 的 **H V/C**）
4. **用一組材料標準，有系統地排序與指定所有物體色的合理計畫** → 色彩**教育**工具

> **為什麼 XYZ 不夠？（00:13:25）**
> **「XYZ 是個很差的系統——它只告訴你紅綠藍的比例，不對應人的知覺。
> 人的知覺是明度（lightness）、彩度（chroma）、色相（hue）。」**

---

## 2. 應用（00:13:52–00:16:55）

| 用途 | 說明 |
|---|---|
| **色彩規範／溝通** | 每個色票背面都有標記（如 H V/C）→ **打電話、寄 email 就能指定顏色** |
| **色彩選擇** | 設計師心裡有個顏色 → 翻書找到最接近的色票 → 拿去做設計稿 |
| **科學分析** | 把一批顏色畫進色空間，看它們的關係 |

**老師舉的實例**：**土壤色卡（Munsell Soil Color Charts）**——地質學家、考古學家、歷史研究者都帶著這本書進田野比對土壤、岩石、水泥的顏色。

---

## 3. 五種理論基礎（00:16:55–00:19:28）★ 老師說「非常可能考」

### ★★ 投影片原文（`slides/L11/L11_s005_017m19s.png`「Bases of colour order」逐字）
```
· Additive mixture of stimuli (e.g. ★ Ostwald)
· Subtractive colorant mixtures (★ Tintometer)
· Principle of perception or colour appearance
    – Equal spacing for each attribute        (★ Munsell)
    – Equal spacing for whole space           (★ OSA)
    – Resemblance of elementary hues          (★ NCS)
```
> **✅ 五種基礎與代表系統「逐條完全一致」，連舉例都一樣。**
>
> **★ 但層級要修正**：投影片其實是 **3 個頂層基礎**，
> 第三個「知覺/色貌原理」底下再分 **3 個子型**：
> ```
> ① 加法混色              → Ostwald
> ② 減法色料混合          → Tintometer
> ③ 知覺 / 色貌原理
>      ├─ 各屬性各自等間隔  → Munsell（DIN 同類）
>      ├─ 整個空間等間隔    → OSA
>      └─ 與基本色的相似度  → NCS
> ```
> 我原本平鋪成 5 條——**答題時用投影片的三層結構更貼**。

| # | 理論基礎 | 代表系統 |
|---|---|---|
| 1 | **Additive mixture 加法混色** | **Ostwald 系統**（用旋轉圓盤混合黑、白、全色） |
| 2 | **Subtractive colorant mixture 減法色料混合** | **Tintometer（Lovibond 比色計）** |
| 3a | **每個屬性各自等間隔** ★ | **Munsell**、**DIN** |
| 3b | **整個色空間等間隔** | **OSA-UCS** |
| 3c | **與基本色（elementary hues）的相似程度** | **NCS** |

---

## 4. 成為色序系統的四個條件（00:19:28–00:21:30）★ 必考

1. **依有秩序且連續的方式排列顏色**（漸變、有系統地位移）
2. **具備邏輯的標記系統，使用「知覺上有意義的維度」**（明度、彩度、色相）
3. **有精確的實體樣本（physical embodiment）**
4. **各尺度必須唯一（unique），且理想上是知覺均勻的（perceptually uniform）**

> **★ 因此 Pantone 不是色序系統（00:28:56）**
> **「Pantone 是 colour specifier（色彩指定工具），不是 colour order system——它不符合上述要求。」**

---

## 5. 優點與缺點（00:21:30–00:28:27）

### 優點
1. **易於理解** —— 手上有實體色票，溝通直觀
2. **可並排比較（side-by-side comparison）**
3. **可攜帶** —— 放口袋帶去展覽現場比色
4. **樣本數量與排列可依應用調整** —— 不必都用 1500 色的大書，55 色的小本也行；**你可以做自己的色票本**
5. **多數都能對應到 CIE 三刺激值** → **有利於色彩複製**

### 缺點（老師列了八項，考題可能要你列舉）
1. **系統太多、彼此無法互轉** —— 用慣 Munsell 的人（美、日）看不懂 NCS，反之亦然
2. **樣本不連續** —— 中間有 gap，需要**視覺內插**；設計師常說「我要的顏色就在這兩個中間」
3. **實體樣本脆弱** —— 會**褪色、刮傷、變髒**，不耐用（而且很貴）
4. **色彩複製不準** —— **你的書和我的書是不同時間、不同批次生產的，色差可能很大**（老師舉 Pantone 為例）
5. **多數系統不適用於自發光顯示器** —— 都是為表面色設計的
6. **只在指定條件下嚴格有效** —— 投影片明列**四項條件**：
   **`illuminant, luminance level, geometry, background`**（照明體、亮度水準、幾何、背景）
   —— 比我原本寫的「通常是日光」完整
7. **裝置相關（device-dependent）的系統受色域限制**
8. **樣本式系統受實際色料限制** —— 理論上可以有無限多色，但受限於**染料、油墨、顏料**做得出來的範圍

---

## 6. 六大色序系統

**Munsell → Ostwald → DIN → OSA → NCS → Coloroid**
（老師說發展工作**大約在 2000 年就基本完成了**，但學色彩科學必須懂它們背後的理論，因為那是均勻色空間的基準線。）

---

## 7. ★★ Munsell 色系統（00:29:23–00:49:09）

### 7-1 發明故事（00:30:24）老師講得很生動
**Albert H. Munsell 是一位美術老師**，教學生怎麼把顏色用到繪畫上。他自認是色彩專家，卻**經常被「怎麼替顏色命名」困擾**。

> 一次從美國到英國的旅程中，太太要他買布料，說要「**salmon（鮭魚色）**」「**sunflower（向日葵色）**」——
> **這些名字根本無法精確描述顏色。**
> 在路上他就想：色彩規範是個大問題，**我們必須有辦法指定顏色**。

於是他發明了 Munsell 色系統。

### 7-2 三個屬性與樹的比喻（00:33:27）
```
Munsell 標記：H V/C     例如 5R 4/14
              ↑ ↑  ↑
            色相 明度 彩度
```

| 屬性 | 說明 | 範圍 |
|---|---|---|
| **Hue 色相 (H)** | 紅橙黃綠藍…（彩虹尺度） | **5 個主色相 + 中間色相**；圖譜常用 **40 個色相** |
| **Value 明度 (V)** | 亮到暗 | **0 = 黑，10 = 白**（**所有顏色都有 Value，不只無彩色**） |
| **Chroma 彩度 (C)** | 從中性往外，色彩越來越強 | **0 = 中性（無色相）**，往外遞增 |

**★ 樹的比喻（Munsell 的原始構想）**：
```
樹頂   → 面向陽光 → 最亮 → 白 (V=10)
樹根   → 埋在土裡 → 最暗 → 黑 (V=0)
樹幹   → 中性灰階
樹枝末端的葉子 → 曬到最多陽光 → 顏色最強 → 高彩度
```

### 7-3 ★ 五個主色相（Principal Hues）
```
R（紅）、Y（黃）、G（綠）、B（藍）、P（紫）
```
> **老師特別停下來說**：「你們可能會問——老師剛剛不是說視覺是紅綠、黃藍**四個**嗎？
> **Munsell 的主色相有五個。我等一下解釋原因。」**
（→ 見本篇「與標準說法的出入」第 3 點，這裡先把答案補上）

### 7-4 指導原則 ★ 這句話老師說「很重要」
> **"Equality of visual spacing between adjacent notations in each of the system's three attributes."**
> **「在三個屬性中，各自的相鄰標記之間，視覺間隔相等。」**

### ★★★ 投影片「Munsell Uniformity」的四條（`L11_s022_040m18s.png` 逐字）
```
· Equal visual perception of spacing between adjacent notations
  in each of the system's three attributes.
· ★ NOT GLOBALLY UNIFORM
· Hue spacing equal for constant chroma
· For equal Value:
      ★ 1ΔH = 2ΔC / 15
      ★ 1ΔV = 2ΔC
```
> **★ 「Not globally uniform」是投影片的原詞** —— 比我寫的「三個尺度單位大小不同」更直接。
> **原因**：三個屬性的尺度化實驗是**分開做**的，所以只保證「各屬性內部等間隔」，**不保證跨屬性可比**。
>
> **兩條換算關係**：
> - **`1ΔV = 2ΔC`** —— **1 個 Value 步 = 2 個 Chroma 步** ✅ 我的筆記正確
> - **`1ΔH = 2ΔC/15`** —— 這正是逐字稿裡那句含糊的「one hue step equal to two chroma step divided by 15」，**投影片證明老師念得沒錯**

### ★ Munsell 最初的構想是「球體」不是「樹」（投影片 `L11_s021_039m57s.png`）
```
· Munsell originally conceived his colour solid as a ★ SPHERE.
· Enriched evenly by hues at ★ Chroma 5.
· Produce by optical mixing (★ Maxwell disc)
· Maximum Chroma depends on Hue and Value.
```
> **★ 這是我原本沒有的一段歷史**：
> **他一開始想的是「球」**（各方向均勻），**在 Chroma 5 上均勻鋪滿色相**，
> **用 Maxwell 旋轉盤做光學混色**來製作色樣。
> **但因為「最大彩度隨色相與明度而不同」**（黃色在高明度才有高彩度、紫色在低明度才有），
> **球體撐不住 → 才演化成不規則的「色樹（colour tree）」。**
> —— 這解釋了為什麼 Munsell 色立體是歪的。

### 7-5 發展史 ★
**投影片 `L11_s020_037m06s.png`「The History of Munsell」逐字**（✅ 六個年份與我的重建**全中**）：
| 年份 | 事件（投影片原文） |
|---|---|
| **1905** | **'A Color Notation'** |
| **1915** | **'Atlas of the Munsell Color System'**（前面 10 年都在演講、推廣理念） |
| **1918** | **Munsell Color Company** 成立 |
| **1929** | **'Munsell Book of Color'** |
| **1930** | **'Spacing of Munsell Colors subcommittee of the OSA'** ← 委員會成立 |
| **1943** | **★ 'Munsell Renotation System'** —— 發表於 JOSA |

### ★★ Munsell 自己對三個屬性的定義（投影片 `L11_s017 / s018 / s019`，引自《A Color Notation》）

**Hue 色相**：
> *"Specifically and technically, distinctive equality of colouring in an objective or a subjective sense,
> in which **red, yellow, green, blue, etc differ one from each other**,
> that in which colour of **equal luminosity and chroma** may differ."*
> —— **在明度與彩度都相同時，仍能彼此區別的那個性質。**

**Value 明度**（1916）：
> *"In printing and the allied arts, relation of an object, part, of atmospheric plane of a picture
> to the others, **with reference to light and shade, the idea of hue being abstracted**."*
> —— **把色相抽離之後，只剩明暗的關係。**

**Chroma 彩度**（1916）：
> *"**The degree of departure of a colour sensation from that of white or gray**;
> the intensity of distinctive hue, colour intensity."*
> —— **一個色感覺「偏離白或灰」的程度。**

> **★ 三個定義的共同手法：都用「把其他兩個固定住，剩下的那個變化」來定義。**
> 這正是「三屬性彼此獨立」的操作型定義，也是色序系統能成立的前提。

> **Renotation 做了什麼**：用**心理物理實驗**重新做尺度化，把相鄰顏色在每個維度上的間隔**平滑化**。
> 老師說總共約 **一百萬次觀察、七所大學**參與（NCS 只有 6 萬次）。
> **今天你買到的 Munsell 色票，全部是基於 1943 年 OSA 的 renotation。**

### 7-6 ★★★ Munsell 對色彩科學最大的貢獻：證明 xy 色度圖不均勻（00:42:12–00:44:44）

把 Munsell 色票畫在 **xy 色度圖**上：
- **每一個環 = 等彩度（constant chroma）**
- **每一條線 = 等色相（constant hue）**

**如果 xy 是均勻色空間，那麼**：
- 這些環應該是**正圓**
- 環與環之間的間隔應該**相等**

**實際結果**：
- 環全部是**橢圓（ellipses）**
- **藍色區被嚴重壓縮**，綠色與黃色區被大幅拉開

> **★ 老師的結論：「這是第一個證據，向世人證明 xy 是非均勻色空間，
> XYZ 不能用來量化色差。
> 藍色區的一個單位距離，可能等於綠色區的五個單位距離。」**

**這就是後面 CIELAB、CIEDE2000 存在的理由。**

### 7-7 與 CIE 系統的關係
- **Munsell 的色度規範是在「Illuminant C + 2° 觀察者」下定義的** ★
  > **老師的評語：「這可能是我們今天還保留 Illuminant C 的唯一理由。」**
- 用 **Hardy 型分光光度計**量測，**積分球幾何、除鏡面（SPE）**
### ★★★ V → Y 的五次多項式（投影片 `L11_s023_041m50s.png`）—— ⚠️ 投影片有一個正負號印錯

**投影片印的**：
```
Y = 1.2219V − 0.23111V² + 0.23951V³ ★+ 0.021009V⁴ + 0.0008404V⁵
```
**正確的 Munsell Renotation 公式**：
```
Y = 1.2219V − 0.23111V² + 0.23951V³ ★− 0.021009V⁴ + 0.0008404V⁵
                                     ↑ 這裡是「減號」
```

**驗算（V = 10 應得 Y ≈ 102.57）**：
| | 計算 | 結果 |
|---|---|---|
| **用減號（正確）** | 12.219 − 23.111 + 239.51 **− 210.09** + 84.04 | **= 102.57** ✅ |
| **用加號（投影片）** | 12.219 − 23.111 + 239.51 **+ 210.09** + 84.04 | **= 522.75** ❌ 離譜 |

> **★ 這是又一個「投影片本身印錯」（見 `00-differences.md` F 類）。照抄會算出五倍大的 Y 值。**
- **HVC 與 XYZ 之間沒有簡單關係** —— 必須找**周圍 8 個 Munsell 點做內插**

### 7-8 為什麼 Munsell 這麼重要（老師的五點）
1. **設計師廣泛使用**（尤其遠東與美國）
2. **國際知名**
3. **被大量研究** —— OSA 投入極大；**RIT（Rochester Institute of Technology）設有 Munsell Color Science Laboratory**，由 Munsell 出資設立講座教授
4. **★ 是其他系統的基礎——CIELAB 就是以 Munsell 為基準建立的**
5. **持續有實體產品可買** + **歷史意義**（大量理論與實驗都是用 Munsell 色票做的）

---

## 8. ★★ NCS 自然色系統（00:49:42–01:08:31）

> 老師的私心：**「我很喜歡自然色系統。我的學生做實驗大量使用 NCS 色票與它的理論。」**

### 8-1 指導原則
> **「與六個基本色（elementary colours）的相似程度（degree of resemblance）」**
> **六個基本色：紅 R、黃 Y、綠 G、藍 B、白 W、黑 S**

**三對互補（對立）**：**R–G、Y–B、W–Bk**

**★ 老師示範的判斷流程（00:50:12）**：
```
拿一個顏色來問自己——
「像紅嗎？」→ 是
「像黃嗎？」→ 是
「像綠嗎？」→ 不
「像藍嗎？」→ 不
「像白嗎？」→ 是（很接近白）
「像黑嗎？」→ 一點點
→ 這樣就描述完這個顏色了
```
> **為什麼這樣可行？因為這六個就是人類視覺系統裡的「唯一色（unitary colours）」。**

### 8-2 歷史（00:51:12–00:53:48）
**投影片 `L11_s032_051m22s.png`「NCS-History」逐字**（★ 修正了我兩處錯誤）：
| 年份 | 事件（投影片原文） |
|---|---|
| **1611** | **Forsius** publishes basic concepts in physics |
| **1874** | ***Das natürliche System der Farbempfindungen*** **（Ewald Hering）** |
| **★ 1964** | **Swedish Colour Centre Foundation** 成立 ← **我原本只寫「約 100 年後」，正確是 1964** |
| **1972** | Colour Notation System **（SS 01 91 00）**（歷經 8 年準備與實驗） |
| **1979** | Colour Atlas **（★ SS 01 91 02）** |
| **★ 1983** | **Tristimulus Values（★ SS 01 91 01）** ← **我原本把這兩個標準號碼記反了** |
| **1995** | **NCS Edition 2** |

> **⚠️ 我原本的錯誤**：我寫「1979 Colour Atlas；三刺激值標準 SS 01 91 02」——
> **把 Atlas 與三刺激值的標準號碼弄反，而且漏掉 1983 這一項。**
> **正解**：
> ```
> SS 01 91 00  =  Colour Notation System   (1972)
> SS 01 91 02  =  Colour Atlas             (1979)
> SS 01 91 01  =  Tristimulus Values       (1983)
> SS 01 91 03  =  Atlas samples measured   (見下方 CIE 對應)
> ```

### 8-3 ★★ 三個屬性與核心恆等式

```
S（Blackness 黑度） + W（Whiteness 白度） + C（Chromaticness 彩度） = 100
```

| 屬性 | 定義 |
|---|---|
| **Blackness S** | 與**完美黑**的相似程度（S = 100 即為黑） |
| **Whiteness W** | 與**完美白**的相似程度（W = 100 即為白） |
| **Chromaticness C** | 與**同色相中最鮮豔者（full colour）** 的相似程度（full colour = 100） |
| **Hue Φ** | 由**兩個相鄰彩色基本色的比例**構成 |

**幾何**：每一頁是一個**三角形**（同一色相），三個頂點是 **W、S、Full Colour**。
- **平行於某一邊的線 = 等黑度線**
- **平行於另一邊的線 = 等白度線**

### 8-4 色相的表示法
色相由**兩個相鄰的彩色基本色**構成，且兩者相加 = 100：
```
Y90R  =  從「黃」出發，往「紅」方向走 90%
       （即 90% 紅 + 10% 黃 → 橘色）
```
**計算式**：`Φ = 100 × (R / C)`，其中 C 由 R、Y、G、B 分量構成。

### 8-5 完整標記 ★
```
S  1050 - Y90R
│   │ │    └── 色相 Hue
│   │ └─────── 彩度 Chromaticness = 50
│   └───────── 黑度 Blackness = 10
└───────────── Standard（品質等級）

→ 白度 W = 100 − 10 − 50 = 40
「1050」這一對數字稱為 Nuance（色調）
```

### 8-6 資料規模與品質等級
| | 數字 |
|---|---|
| **觀察次數** | **約 60,000 次**（Munsell 約 1,000,000 次） |
| **色相階數** | **40** |
| **黑度、彩度階數** | **各 10 階** |
| **色樣總數** | **1,412 個**（Edition 1）；**Edition 2 約 1,750 個**（Munsell 約 1,500） |
| **容差（Ed.1）** | **± 2 NCS 單位** |

**Edition 2（2000）的改進**：
- 使用**更環保的顏料**
- **容差收緊**
- **色數更多**
- **分三個品質等級**

### ★★ Edition 2 的精確容差表（投影片 `L11_s043_066m09s.png` 逐字）
```
Quality      ΔE(f₁)          ΔE(f₂)
Standard                     < 0.5   100%
QL1          < 0.6   80%     < 1.0   100%
QL2          < 0.6   70%     < 1.0    90%     < 1.5  100%
```
| 等級 | 容差規格 | 價格 |
|---|---|---|
| **Standard** | **100% 的樣品 ΔE < 0.5** | **最貴、最準** |
| **QL1** | **80% < 0.6，且 100% < 1.0** | 中等 |
| **QL2** | **70% < 0.6，90% < 1.0，100% < 1.5** | **最便宜** |

> **⚠️ 修正我原本寫的**：我寫「QL1 90% 小於 ΔE 1」——**正確是 QL1「100%」小於 1.0**，
> **「90% 小於 1.0」是 QL2 的規格。** 兩者記反了。
>
> **★ 注意規格的寫法**：不是單一門檻，而是**「百分位 + 門檻」的組合**
> ——這才是真實的品管規格寫法（呼應 L14「平均會掩蓋災難」的教訓）。

**★ 各等級對應的實體產品（投影片 `L11_s044 / s045`）**：
```
Standard        – NCS Atlas
Quality Level 1 – NCS Box, NCS Block, NCS Album, A4 and A6 Sheets
Quality Level 2 – NCS Index, NCS Selection, NCS Chips
```
**Edition 2 的新標記範例**：`S2010-Y10R`（投影片 `L11_s041`）
  > **老師的話：「要越準的色彩配對，就要付越多錢。」**
  > **Edition 1 已停售**，現在只買得到 Edition 2 的三種等級。

### 8-7 NCS 產品與定位
- 產品線：**色書（最常用）、色卡（大張、很好用）、扇形色票（fan deck）**
- **每一頁 = 同一色相**，內部依黑度/彩度/白度排成三角形
- **瑞典、挪威、西班牙的國家標準**（★ 投影片寫的是 **Portugal**，見文末勘誤第 2 條）
- **在歐洲被設計師廣泛使用，現在擴散到全世界**

### ★ NCS - Summary（投影片 `L11_s046_067m41s.png` 逐字，五點）
```
· Physical samples available since 1979
· Standard in Sweden, Noway and Portugal; extensively used in Europe.
· Six elementary colours,
· Attributes of blackness, chromaticness and hue.
· ★ No simple relationship with CIE XYZ.
```
> **★★ 最後一點是重點**：**NCS 與 CIE XYZ 之間「沒有簡單關係」。**
> 這正好與 Munsell 形成對比 —— Munsell 有 **Y ↔ V 的五次多項式**（雖然只換得了明度一維），
> 而 NCS **只能靠查表**（`SS 01 91 03`，16,000 個 aim points）。
> **原因**：Munsell 的軸是「知覺等距」，可以逐軸對應物理量；
> NCS 的軸是「與六個基本色的相似度」，本質上是**心理判斷的比例**，沒有對應的物理量。
> **這是色序系統與色度系統的根本分野**，很適合當申論題。
### ★★★ NCS → CIE 的實際做法（投影片 `L11_s040_063m53s.png` 逐字）
```
· Atlas samples were measured (★ SS 01 91 03)
· Interpolation used to produce ★ 16,000 aim points (SS 01 91 01)
· For neutral colours:
      ★ Y = 56v / (1.56 − v)
      ★ where v = (100 − s) / 100          （s = blackness 黑度）
· No simple relationship with CIE system.
```
> **★ 這是我原本只有「需要內插」的部分，現在有了確切的中性色轉換式。**
> **驗算**：
> - s = 0（純白）→ v = 1 → **Y = 56/(1.56−1) = 56/0.56 = 100** ✅
> - s = 100（純黑）→ v = 0 → **Y = 0** ✅
>
> **這條式子把 NCS 的「黑度 s」直接接到 CIE 的「亮度因數 Y」**，是兩套系統之間唯一的解析橋樑
> ——**彩色部分仍然只能靠 16,000 個內插目標點查表。**

### ★★ NCS 的完整方程式組（投影片 `L11_s037_058m38s.png`）
```
c = r + y + g + b                    彩度是四個色相分量的總和

φ_r = 100 (r/c)      φ_y = 100 (y/c)
φ_g = 100 (g/c)      φ_b = 100 (b/c)

★ s + w + r + y + g + b  =  s + w + c  =  100
```
> **✅ 我筆記的 `S + W + C = 100` 與 `Φ = 100 × (R/C)` 都正確**，
> 投影片多給的是 **`c = r + y + g + b`** 這一層（彩度由四個色相分量組成）。

### ★★ NCS 標記的完整拆解（投影片 `L11_s038_060m05s.png` 的範例）
```
Example
  10 % blackness (S)        →  s = 10
  40 % whiteness (W)        →  w = 40
  50 % chromaticness (C)    →  c = r + y + g + b = 50
  10 % yellowness
  90 % redness              →  φ = Y90R

              S  1050 - Y90R
              ↑   ↑↑     ↑
         Standard S  C    Φ
                 └Nuance┘ Hue
```
> ✅ **與我筆記的範例完全一致**（s=10, w=40, c=50, Y90R, Nuance=1050）。

### ★★ NCS Atlas 的規格（投影片 `L11_s039_061m51s.png` 逐字）
```
· Based on over ★ 60,000 observations
· ★ 40 hue steps and 10 steps in blackness and chromaticness
· Total of ★ 1412 colour samples
· Nominal tolerance of ★ ±2 NCS units for primary standards
· ★ Most boundary colours could not be produced within the tolerance!
```
> ✅ **五項全部與我的筆記一致**，**「1412」也確認了我把逐字稿「14,012」更正為「1,412」是對的。**

- **與 CIE 無簡單關係**——彩色部分需要內插（16,000 個目標點）

---

## ⚠️ 轉錄勘誤

| 轉錄文字 | 正確 |
|---|---|
| Mansell / Monseil / Montserrat / Monceau | **Munsell** |
| Osterwood / Austin Wood / Osterwee | **Ostwald** |
| Ding | **DIN**（德國工業標準色系） |
| color oil | **Coloroid**（匈牙利色系統） |
| Edwin Herring | **Ewald Hering**（艾瓦爾德·赫林） |
| for Cs / fourth year's theory | **Forsius**（Aron Sigfrid Forsius, 1611） |
| Luchus / Luchest Institute of Technology | **Rochester Institute of Technology (RIT)** |
| C-Lab | **CIELAB** |
| soil card | **soil colour chart**（土壤色卡） |
| SS and O19 9100 | **SS 01 91 00**（瑞典標準） |
| 14,012 color samples | **1,412 個色樣** |
| tele-spectral radio meters | **tele-spectroradiometer** |
| "developed in the early 90s"（講 Munsell） | **1900 年代初**（1905 第一版） |
| hardy type spectrophotometer | **Hardy recording spectrophotometer**（GE / Arthur C. Hardy 設計） |

---

## 🔍 與標準說法的出入 / 需要留意

### 1. Ewald Hering 是「德國化學家」？
- **Hering (1834–1918) 是德國生理學家（physiologist）**，不是化學家。
- 他的對立色學說代表著作是 **1878 年《Zur Lehre vom Lichtsinne》**；1874 年起陸續發表相關論文。老師給 1874 可接受。

### 2. NCS 是哪些國家的國家標準？（★ 已由投影片翻案——**不是老師口誤**）
- 老師說「瑞典、挪威、葡萄牙」。
- **投影片 `L11_s046_067m41s.png`「NCS - Summary」原文就寫 `Standard in Sweden, Noway and Portugal`**
  →（順帶一提，`Noway` 是投影片的錯字，應為 `Norway`。）
- **所以老師是照著投影片唸的，不是口誤。** 這一項要從「A 類口誤」改列為 **F 類（投影片本身的錯）**。
- **但內容仍然存疑**：一般文獻與 NCS Colour AB 官方資料列的是
  **瑞典（SS 01 91 xx）、挪威（NS）、西班牙（UNE 48-103）**，並沒有葡萄牙。
- **兩軌處理**：
  - **考試** → 寫投影片的「Sweden, Norway, Portugal」（老師以自己教材為準）
  - **論文 / 實務** → 寫 **Spain**，並註明來源

### 3. ★★ 為什麼 Munsell 有「五個」主色相，而視覺只有「四個」唯一色相？
（老師說「我等一下解釋」，這裡把完整答案補上——**很可能是考題**）

**（a）Munsell 選五個的理由是「算術方便」，不是知覺上的理由。**
- 5 個主色相（R Y G B P）+ 5 個中間色相（YR GY BG PB RP）= **10 個** → 每個再分 10 等分 = **100 個色相**，**十進位、好記、好內插**。
- Munsell 是**美術老師**，他要的是一個學生用得順手的教具，不是一個生理學模型。

**（b）更關鍵：Munsell 的主色相「不等於」唯一色相。**
實驗量到的唯一色相位置大致是：
| 唯一色 | 大約落在 Munsell 的位置 |
|---|---|
| Unique Red | **約 5R–7.5R**（勉強接近 5R） |
| Unique Yellow | **約 5Y–10Y** |
| **Unique Green** | **約 5BG（藍綠）——不是 5G！** |
| **Unique Blue** | **約 5PB（紫藍）——不是 5B！** |

> **也就是說，Munsell 的「5G」在多數人眼中偏黃綠，「5B」偏青。
> NCS 的 G 與 B 才是真正的唯一色相。**
>
> **這正是 NCS 與 Munsell 最根本的哲學差異：**
> - **Munsell 追求「等間隔（equal spacing）」** → 工程/量測導向
> - **NCS 追求「與基本色的相似度（resemblance）」** → 知覺/描述導向
>
> 兩者不是誰對誰錯，是**回答不同的問題**。

### 4. 「CIELAB 是基於 Munsell」要講得更精確
- 準確說法：**CIELAB 是為了逼近 Munsell renotation 的間隔而設計的**，其直接前身是 **Adams–Nickerson chromatic value space（ANLAB）**。
- 所以 **CIELAB 的立方根、a\*b\* 的形式，都是為了「把 Munsell 的等間隔攤平」**。
- 這也解釋了 **CIELAB 為什麼在藍色區表現特別差**——因為 Munsell 資料在高彩度藍區本來就稀疏，而且藍區的非線性最嚴重。

### 5. Munsell 色相數：40 還是 100？
- **完整系統：10 個主要色相 × 10 = 100 個色相**
- **市售圖譜通常用 40 個色相**（每 2.5 個單位一張，即 2.5R、5R、7.5R、10R…）
- 兩個數字都會出現，看情境。老師說 40，指的是圖譜。

### 6. Illuminant C 的現況
- 老師說「這可能是還保留 C 的唯一理由」——很中肯。
- 補充：**現代的 Munsell 產品也會同時提供 D65 下的量測值**；而 **CIE 已於 2004 年正式將 C 列為「不建議用於新工作」**。
- 但 **Munsell renotation 的原始定義確實綁在 C + 2°**，換照明體重算會改變 renotation 的一致性——這是歷史包袱。

### 7. 「Hardy 分光光度計」是什麼（補充歷史）
- **GE Hardy Recording Spectrophotometer**，由 **MIT 的 Arthur C. Hardy** 於 1935 年設計，是**世界第一台自動記錄式分光光度計**。
- Munsell renotation 能做出來，很大程度是因為當時有了這台機器可以量 1000 多個色票的反射率。
- **儀器的進步 → 標準的進步**，這是色彩科學一貫的模式（呼應 L04/L05 儀器那兩節）。

### 8. Pantone 的定位（老師講得對，但值得展開）
- Pantone 是**專有的色彩配方庫（proprietary colour specifier）**：它告訴你「用哪幾種基礎油墨、按什麼比例混」。
- 它**沒有知覺上有意義的維度**、**沒有等間隔**、**排列順序是商業/流行導向**。
- 所以它**是極好的溝通工具、極差的色彩科學工具**。
- 老師舉的「你我的 Pantone 書色差很大」是業界公認的問題（不同批次、褪色、油墨差異），Pantone 官方也建議**每 12–18 個月換一本**。

---

## 📌 本節可能考點

1. **色序系統的定義（至少講出兩種說法的關鍵字）**
2. **色序系統必須滿足的四個條件？**
3. **為什麼 Pantone 不是色序系統？**
4. **五種理論基礎與代表系統？**（★ 老師說很可能考）
5. 色序系統的優點與缺點（各列 3–5 項）
6. **Munsell 的三個屬性、標記法、樹的比喻？**
7. **Munsell 的指導原則是什麼？五個主色相是哪五個？**
8. **★ Munsell 對色彩科學最大的貢獻是什麼？**（證明 xy 非均勻）
9. Munsell 是在什麼照明體與觀察者下定義的？（**C + 2°**）
10. **NCS 的指導原則？六個基本色？**
11. **★ S + W + C = 100 是什麼？** 解讀 `S 1050-Y90R`
12. **Munsell 與 NCS 的哲學差異？**（等間隔 vs 相似度）
