# L12｜Lecture 7（下）：Ostwald、DIN、ColorCurve、OSA-UCS、Coloroid
**來源**：`2021-11-06 09-31-01.mp4`（00:00–28:00）｜Day 3 上午後半
**老師的定位（前一節結尾）**：
> **「Munsell 和 NCS 是最重要的兩個。其他的要不是很類似，就是理論很好但不實用——因為你在市面上買不到。」**

---

## 1. Ostwald 系統（00:01:12–00:08:01）

### 1-1 指導原則
> **① 視覺間隔相等（equality of visual spacing）**
> **② 色相互補（complementarity of hues）**

- 色相環上，**紅↔綠、黃↔藍**互為補色
- **翻開色書：一邊是綠、另一邊就是紅**（互補色成對編排）
- 結構上像 Munsell 的**色立體（color tree）**：中央是灰階（白→黑），每個色相是一個**三角形**（類似 NCS）

### 1-2 三個屬性（投影片 `L12_s006_003m22s.png`「Ostwald - Dimensions」逐字）
```
· Lightness
   – A log scale providing approximately equal visual steps
     using ★ Weber & Fechner laws.
· Saturation
   – Scaled in relation to 'full colour'.
· Hue
   – Four main hues: red, yellow, green and blue.
```
| 屬性 | 定義 | ★ 關鍵 |
|---|---|---|
| **Hue 色相** | 4 個主色相（**紅、黃、綠、藍**）為基礎，**全系統共 24 個色相** | 4 主 → 24 分 |
| **Saturation 飽和度** | **相對於 full colour（該色相中最飽和者）**；full colour = **100**，往內遞減 | 這正是它**停產**的原因（見 1-4） |
| **Lightness 明度** | **對數尺度（log scale）**，提供近似等視覺階 | **★★ 投影片明文寫「using Weber & Fechner laws」** |

> **★★★ 這是全課少數「心理物理定律 → 直接被拿去造一個實體色序系統」的例子。**
> Ostwald 用的是 **L09 的 Fechner 定律**：`S = k·log(I)`
> —— 亮度以**對數**分階，就能得到「近似等視覺差」的明度尺度。
> **對照組**：
> - **Munsell Value** 用的是**冪次律路線**（最後被 CIE 收成 `L* = 116(Y/Yn)^(1/3) − 16`，指數 1/3 ≈ **Stevens 定律**）
> - **Ostwald Lightness** 用的是**對數路線**（**Fechner**）
> **→ 同一個問題（明度怎麼分階），兩個系統選了心理物理學史上互相競爭的兩條定律。**
> 這題很適合考「Weber / Fechner / Stevens 在真實系統裡各出現在哪」。

**色相區的命名**：紅、橙、黃、**葉綠（leaf green）**、**海綠（sea green）**、藍、紫。

### 1-2b 標記法（投影片 `L12_s007_004m34s.png`「Ostwald - Notation」）
```
· 24 hues
· ★ Maximum obtainable excitation purity, p
```
> **★ 注意這裡用的是 `excitation purity`（刺激純度 pe）**——就是 **L02** 講色度圖時
> 那個「從白點沿主波長方向、樣品點落在多少百分比」的量。
> **Ostwald 的「full colour」在物理上就是「該色相所能達到的最大刺激純度」。**
> 所以它不是抽象概念，而是**綁死在當時能買到的顏料上** → 直接導致 1-4 的下場。

### 1-3 與 NCS 的關鍵差異 ★
```
Ostwald：三角形「填滿」——包含 full colour（實際印出來的最飽和色）
NCS   ：full colour 是「想像的」——不印出來
```

### 1-4 ★★ 為什麼 Ostwald 停產了？（00:07:00）這是老師講得最精采的一段
> **「因為它把飽和度尺度定義在『full colour = 世界上最飽和的顏料』上。
> 而**每一年都有新的、更飽和的顏料上市**。
> 所以這套系統的顏色**幾乎天天都在過期**——他們必須不斷修改系統、重製樣本，
> **跟不上、也太貴了**，所以就停產了。」**

> **★ 反觀 NCS：full colour 是「想像的、不印出來的」，所以永遠不會過期。**
> 這是一個**設計哲學決定產品壽命**的絕佳案例。

### 1-5 ★★ 版本沿革（投影片 `L12_s001 / s004 / s049`「Ostwald - History」逐字，六列）
```
1915   Die Farbelechre (The Color Primer)
1942   Color Harmony Manual + Index (1st Ed)
1945   Color Harmony Manual (2nd Ed)
1949   Color Harmony Manual (3rd Ed)
1958   Color Harmony Manual (4th Ed)
1960   ★ Swiss Color Atlas 2541
```

> ### ★★★ 這一列解開了一個懸案
> 我原本把老師說的「**Ostwald 是瑞士標準**」列為疑似口誤（舊 A13），因為 Ostwald 本人是**德國**化學家。
> **投影片最後一列寫著 `1960 Swiss Color Atlas 2541`** —— 他指的是這本**瑞士色彩圖冊**（收 2541 色），
> **不是**在說「Ostwald 是瑞士的國家標準」。**老師沒錯，是我誤判。**
>
> **正確理解**：Ostwald 這一脈的實體產品有兩條線
> - **美國線**：`Color Harmony Manual`（Container Corporation of America 出版，1942–1958 共四版）
> - **瑞士線**：`Swiss Color Atlas 2541`（1960）
>
> **⚠️ 投影片小錯**：第一列 `Die Farbelechre` 拼字有誤。英文標題 *The Color Primer* 對應的是
> Ostwald 的 ***Die Farbenfibel***；***Die Farbenlehre***（1918–23）是另一套更大部頭的著作。
> 考試不會考拼字，記「**1915 年前後的色彩入門書**」即可。

**與 CIE 的關係（投影片 `L12_s008_005m09s.png`「Relation to the CIE System」）**
```
· Ostwald System        – Foss et al.
· Color Hamony Manual   – Granville et al.
· Journal of the Optical Society of Amerca (1944)
```
> **★ 原始文獻**：**Foss, Nickerson & Granville (1944), "Analysis of the Ostwald Color System",
> _JOSA_ 34(7), 361–381.**
> 注意 **Dorothy Nickerson** 也在作者群裡 —— 她同時是 **Munsell Renotation（1943, JOSA）** 的核心人物。
> **同一批 OSA 的人，同一個年代，把 Munsell 和 Ostwald 都拿去和 CIE 系統對接**，
> 這就是 1940 年代「色序系統 → CIE 座標」的統一運動。（呼應 L11 的 Munsell Renotation）

### 1-6 Ostwald 總結（投影片 `L12_s009_005m24s.png`「Ostwald - Summary」逐字，五點）
```
· Popular in art and design
· ★ Like NCS, based on Herring's opponent colour theory.
· Attributes are: – Lightness, Saturation and Hue.
· ★ No simple relationships with CIE XYZ.
· ★ Physical atlas is no longer in production.
```
> **`Herring` 是投影片錯字，應為 `Hering`**（赫林）。
>
> **★ 注意第三點**：官方屬性名是 **Lightness、Saturation、Hue**——
> 不是「白量 / 黑量 / 純色量」。後者是 Ostwald **內部的構成量**（w + b + c = 1），
> 外部呈現給使用者的三個軸仍是 **L / S / H**。答題時不要混。
>
> **★ 第四點「No simple relationships with CIE XYZ」與 NCS 的結論一字不差**
> （見 L11 `s046`）——這是**所有以「與基本色的相似度」為軸的系統**的共同宿命：
> 軸是心理量，不對應任何單一物理量，只能查表。

---

## 2. DIN 色系統（DIN 6164）（00:08:01–00:16:15）

**DIN = 德國工業標準**，**1953 年起**有實體樣本。

**指導原則（投影片 `L12_s012_008m12s.png`）**
```
· Guiding Principles:
   – ★ Equality of visual spacing for each of its three variables:
     hue, saturation and darkness.
```
> **★★ 注意措辭：「for each of its three variables」——「對每一個變數分別」等間距。**
> 這句話已經預告了 2-3 的限制：**逐軸均勻 ≠ 整體均勻**。
> 對比 Ostwald 的原則是「視覺間隔相等 **+ 色相互補**」，DIN 拿掉了互補性，只保留等間距。

### 2-0 ★★ DIN 沿革（投影片 `L12_s013_008m51s.png`「DIN - History」逐字，五列）
```
1930   Deutsches Institute fur Normung (DIN)
1938   Testing Materials, Berlin (now BAM)
1953   Colour Chart – ★ 600 matte samples
1980   ★ DIN 6164 colorimetric specification
1983   Colour Chart – ★ 1000 matte samples
```
| 年 | 事件 | 意義 |
|---|---|---|
| **1930** | 德國標準協會 DIN 成立 | 機構誕生 |
| **1938** | 材料測試所（柏林，即今日 **BAM**） | 執行單位 |
| **1953** | **色卡：600 個消光（matte）樣本** | **實體樣本首度問世** |
| **1980** | **DIN 6164 色度規範發布** | **★ 樣本先有（1953），數學規範 27 年後才補上（1980）** |
| **1983** | **色卡：1000 個消光樣本** | 擴版 |

> **★ 值得注意的順序**：**先做出實體樣本（1953）→ 27 年後才發布色度規範（1980）**。
> 這正是**色序系統的本質**——它**先是一組實體樣本**，數學描述是事後補的。
> 對照 **CIE 系統**：先有數學（1931 CMF），實體標準（陶瓷磚）是後來為了校儀器才做的。
> **這一組對照可以直接回答「色序系統與色度系統有何根本不同」。**
> **另一個細節**：樣本一律是 **matte（消光）** —— 避免鏡面反射干擾，呼應 L01 的量測幾何。

### 2-1 ★★★ 三個屬性（TSD）——投影片 `L12_s014 / s017`「DIN - Variables」逐字
```
· Hue Number (T)
   – ★ 24 principle hues starting with YELLOW at T=1
     representing equal hue differences.
· Saturation Degree (S)
   – ★ Perceptual distance from a grey of the SAME LUMINANCE FACTOR
     (★ from 0 to 15).
· Darkness Degree (D)
   – ★ Relative brightness with origin at the corresponding
     OPTIMAL COLOUR.
```
| 符號 | 德文 / 英文 | 投影片的精確定義 | ★ 考點 |
|---|---|---|---|
| **T** | Farbton / **Hue Number** | **24 個主色相，從「黃色」開始編號 T = 1**，各色相差相等 | **起點是黃、不是紅**（Munsell 起點是紅 5R） |
| **S** | Sättigung / **Saturation Degree** | 與**同亮度因數（same luminance factor）的灰**的**知覺距離**；**範圍 0–15** | **① 參考的灰必須「同 Y」；② 有明確上界 15** |
| **D** | Dunkelstufe / **Darkness Degree** | 以**對應的最佳色（optimal colour）為原點**的**相對亮度** | **原點不是白、也不是黑，而是「該色度的理論最亮色」** |

**標記範例**：`T : S : D` = **`24 : 5 : 3`** → 色相 24、飽和度 5、暗度 3

> **★★ 三個定義各藏一個陷阱，很適合出選擇題：**
> 1. **T 從黃開始**（因為黃是視覺上最亮的色相，DIN 從這裡起算）
> 2. **S 是「與同 Y 的灰」的距離** → 意味著 **S 是在等亮度平面上量的**，
>    與 Munsell Chroma（也是等 Value 平面）概念一致，但 DIN 明確寫死 **0–15**
> 3. **D 的原點是 optimal colour** → 所以 **D 不是「離白多遠」，而是「離該色度所能達到的最亮多遠」**，
>    這使 D 天生綁在 **MacAdam limits（最佳色軌跡）** 上 —— 見 2-2

### 2-2 ★★★ Darkness 的完整公式（老師說「這是個很奇怪的定義」）
**投影片 `L12_s023_014m05s.png` / `s026_016m08s.png`「Relation to the CIE System」逐字：**
```
· DIN 6164

    D = 10 − 6.1273 log₁₀ (40.7 A/A₀ + 1)

  where A = Y and A₀ is the 'luminous reflectance of the optimal colour
  of the same chromaticity' determined from an LUT.

  Interpolate to determine other valkues.
```

> **⚠️ 修正我原本寫的**：我曾註記「老師只給了概念，沒給公式」——**錯了，公式就印在投影片上。**

| 符號 | 意義 |
|---|---|
| **A** | **= Y**，樣品的亮度因數（luminance factor） |
| **A₀** | **同色度（same chromaticity）之「最佳色」的 luminous reflectance**，**由查找表（LUT）取得** |
| **D** | Darkness Degree |

**★ 用邊界條件驗算這條公式（強烈建議自己算一次，考試很好用）**
```
① 樣品就是最佳色      A = A₀  →  A/A₀ = 1
   D = 10 − k·log₁₀(41.7) = 10 − k×1.620136
② 樣品是純黑          A = 0   →  A/A₀ = 0
   D = 10 − k·log₁₀(1)   = 10 − 0 = 10   ✅
```
> **② 永遠成立**（log₁₀1 = 0），所以 **黑色 D = 10**。
> **① 要成立（最佳色 D = 0），k 必須 = 10 / 1.620136 = `6.17232`。**

### ⚠️★ 投影片的數字錯誤：`6.1273` 應為 `6.1723`（27 / 72 顛倒）
| 常數 | D(最佳色) | D(黑) | 判定 |
|---|---|---|---|
| 投影片 **6.1273** | **0.0729** | 10.000 | ❌ 最佳色的暗度不等於 0，多出一個沒道理的餘數 |
| 正確 **6.1723** | **0.00003** | 10.000 | ✅ 剛好把 **[最佳色, 黑]** 映射到 **[0, 10]** |

> **為什麼確定是 6.1723**：投影片 `s014` 自己定義 **「Darkness Degree = relative brightness
> with ORIGIN AT the corresponding OPTIMAL COLOUR」**——「以最佳色為原點」就是說
> **最佳色的 D 必須恰好是 0**。只有 `6.1723` 做得到。`6.1273` 純粹是打字時把 **27 / 72 對調**。
>
> **寫程式一定要用 6.1723。**

**★★ 這條公式的三個觀察（很適合當申論題的材料）**
1. **它是對數式** → 又一次呼應 **Fechner 定律**（同 Ostwald 的 Lightness）。
   **DIN 的三個軸裡，只有 D 有封閉解析式，另外兩個（T、S）純靠查表。**
2. **`+1` 是為了讓 A = 0 時 log 有定義**（避免 log 0 = −∞），
   同時讓黑色乾淨地落在 D = 10。這是典型的 **log(x+1) 平移技巧**。
3. **★ 它是「相對量」不是「絕對量」**：分母 A₀ 隨色度改變。
   所以**兩個 D 相同的顏色，Y 可以差非常多**（黃色的 A₀ 很大、藍色的 A₀ 很小）。
   → 這解釋了 2-4「DIN 大多數顏色看起來偏暗」的觀感從何而來。

**★ 什麼是 Optimum Colours（最佳色）？**
- 色立體**最頂層那一面**上的顏色
- **很多是無法被實際重現的想像色**
- 它們代表**在該色度下理論上可能的最高亮度**
- **正式名稱**：**optimal colours**，其軌跡即 **MacAdam limits（MacAdam 極限）**
  —— 由「反射率只能是 0 或 1、且最多兩個切換點」的方波反射率產生（見文末勘誤第 5 條）

### 2-3 ★★ 色卡的建構順序（投影片 `L12_s019_012m24s.png`「DIN – Development of the Atlas」逐字）
```
· Hue scaling
· Saturation scaling
· Darkness scaling

· ★ Equally perceived divisions do not apply to the space as a whole.
```
```
① 先做 Hue 尺度化 → 把色相環等分成 24 份（視覺上等分，但幾何上可能被擠壓）
② 再做 Saturation 尺度化
③ 最後做 Darkness 尺度化
```
> **★★★ 這張投影片的最後一句是整個「色序系統」單元的總結句：**
> **"Equally perceived divisions do not apply to the space as a whole."**
> **逐軸等知覺分割 ≠ 整個色空間均勻。**
>
> **為什麼？因為三個軸是「一個一個分開做實驗」定出來的**（① → ② → ③），
> 從來沒有做過「跨軸」的實驗去問「1 階色相差 = 幾階飽和度差？」
> **所以軸與軸之間的比例是未知的。**
>
> **★ 這句話在三個系統裡以三種面貌出現，是同一件事：**
> | 系統 | 投影片原句 | 出處 |
> |---|---|---|
> | **Munsell** | `Not globally uniform`；`1ΔH = 2ΔC/15`、`1ΔV = 2ΔC` | L11「Munsell Uniformity」 |
> | **DIN** | `Equally perceived divisions do not apply to the space as a whole` | L12 `s019` |
> | **（反例）CIELAB** | 刻意設計成 **ΔL\*、Δa\*、Δb\* 可以直接開平方和** | L13 |
>
> **→ 這就是「為什麼需要色差公式 / 均勻色空間」的根本理由，也是三階段框架第 ① 站到第 ② 站的橋。**
> Munsell 還好心給了換算比（1ΔV = 2ΔC = 15ΔH），DIN 連比例都沒給。

### 2-4 為什麼也停產了
- **色域太小**，顏色數量遠少於 Munsell 與 NCS
- **大多數顏色偏暗**（因為飽和度尺度的設計方式）
- 「所以看起來就不夠吸引人、賣不好」

### 2-6 DIN 總結（投影片 `L12_s024 / s027`「DIN - Summary」逐字，六點）
```
· Physical samples available since 1953.
· Standard in Germany.
· Attributes are: hue number, saturation degree and darkness degree.
· ★ Specified colorimetrically for a number of different measurement conditions.
· ★ Not-so-simple relationships exist with CIE XYZ.
· Physical atlas is no longer in production.
```
> ### ★★ 注意第五點的措辭差異 —— 這是三個系統的分水嶺
> | 系統 | 投影片原句 | 實際意思 |
> |---|---|---|
> | **NCS** | `No simple relationship with CIE XYZ` | **完全沒有公式**，只能查 16,000 點的 aim table |
> | **Ostwald** | `No simple relationships with CIE XYZ` | 同上 |
> | **DIN** | **`Not-so-simple relationships EXIST with CIE XYZ`** | **★ 關係「存在」，只是不簡單** |
>
> **DIN 是唯一有解析式的**——`D` 有封閉公式（2-2 那條對數式），
> 只有 `A₀` 需要查 LUT。**「Not-so-simple」而不是「No simple」，一字之差要看出來。**
>
> **★ 對照三系統的「可算性」光譜**：
> ```
> 完全查表 ←──────────────────────────────────→ 完全公式
> NCS / Ostwald    Munsell（V有五次多項式，HC查表）    DIN（D有式，TS查表）    CIELAB（全公式）
> ```

### 2-5 ★★★ 與 CIE 的關係（投影片 `L12_s020_012m45s.png`「Relation to the CIE System」逐字）
```
· DIN 6164
   – The main standard includes the colorimetric specification of the
     DIN Colour Chart for ★ illuminant D65, 2° observer.
   – Other supplements are available for ★ D65/10° and ★ C/2°.
```
| 版本 | 照明體 / 觀察者 |
|---|---|
| **主標準（main standard）** | **D65 / 2°** |
| 補篇 1 | **D65 / 10°** |
| 補篇 2 | **C / 2°** |

> **⚠️ 修正我原本寫的**：我寫「提供 D65/10°、C/2° 等」，**漏掉了最重要的主標準是 D65/2°**。
> 考試如果問「DIN 6164 的主標準用哪個照明體與觀察者」，答案是 **D65 / 2°**。
>
> ### ★★★ 這一張是老師「鐵律 ①」最好的實證
> 老師反覆講（他明說**極可能是考題**）：
> > **「給你 XYZ 相同就代表顏色相配嗎？不。必須指定 ① 幾何、② 照明體、③ 觀察者。」**
>
> **DIN 6164 就是活生生的證據**：同一組實體色卡、同一組 TSD 標記，
> 因為**換了照明體或觀察者，XYZ 就變了**，所以標準必須**發三套表**。
> **一個色序系統的 TSD 是固定的（心理量），但它的 XYZ 不是（物理量，隨條件變）。**
>
> **這也回答了「為什麼 TSD ↔ XYZ 沒有簡單關係」**：
> 不只是數學上複雜，而是**這個對應本身就依賴於量測條件**，
> 換條件就要換一整張表。**只能查表，不能寫成一條公式。**

---

## 3. Colorcurve（00:16:15–00:18:48）
> **★ 投影片寫的是 `Colorcurve`（一個字、小寫 c），不是 `ColorCurve`。**

**指導原則（投影片 `L12_s029_016m33s.png`）**
```
· Guiding Principles:
   – To find an effective colour communication tool between
     ★ SPECIFIERS and MANUFACTURERS.
```
**美國商業系統**，目標是**在「指定者（specifier，例如設計師、品牌）」與「製造者（manufacturer）」
之間建立有效的色彩溝通工具**。

### 3-1 ★★ 四大特徵（投影片 `L12_s030_017m11s.png`「Colorcurve - Features」逐字）
```
· ★ Colours are specified by R%, CIELAB, and XYZ.
· Aim points are specified in CIELAB.
· ★ Physical embodiment of aim points.
· ★ Computer colour-matching possible for other media.
```
| 特徵 | 意義 |
|---|---|
| **以 R%、CIELAB、XYZ 三者指定** | **★ R% = 反射率百分比**——三種表示同時給 |
| **Aim points 定義在 CIELAB** | 先有數字目標 |
| **實體樣本是 aim points 的「physical embodiment（實體化身）」** | **★ 順序反過來了** |
| **可對其他媒材做電腦配色（CCM）** | 因為有反射率 |

> ### ★★★ 「Physical embodiment of aim points」——這句話值得停下來想
> **傳統色序系統**（Munsell / NCS / DIN / Ostwald）的順序是：
> ```
> 做出實體樣本 → 做視覺實驗排序 → 事後量測、補上色度規範
> （DIN：1953 樣本 → 1980 才有色度規範，隔了 27 年）
> ```
> **Colorcurve 完全相反**：
> ```
> 先在 CIELAB 裡「算」出 aim points → 再把它們「印出來」當作實體化身
> ```
> **→ 它不是「用樣本定義顏色」，而是「用數字定義顏色，樣本只是參照物」。**
> 這是**色序系統被 CIE 色度學收編後的產物**，時代標記非常明顯。
> 也因此它是本節唯一**不需要**「Relation to the CIE System」那張投影片的系統——**它本來就長在 CIE 上**。

### 3-2 ★★ 標記法（投影片 `L12_s032 / s034`「Colorcurve - Notation」逐字）
```
· Lightness Level (L)
· Red (R), Yellow (Y), Green (G) and Blue (B)
   – ★ From opponent hues on CIELAB a*b* axes and range from 0 (neutral) to 9.

· For example: ★ L55 G2Y4
   – ★ L* = 55, a* = −10.93, b* = 22.37
```
| 符號 | 意義 |
|---|---|
| **L** | **Lightness Level**，直接就是 **CIELAB 的 L\*** |
| **R / Y / G / B** | 取自 **CIELAB a\*b\* 軸上的對立色相**；**範圍 0（中性）到 9** |

**★ 唯一的完整範例（可以拿來驗算）**
```
L55 G2Y4   →   L* = 55 ,  a* = −10.93 ,  b* = +22.37
             ↑        ↑                ↑
           明度55   G2 → a* 負向        Y4 → b* 正向
```
> **★ 從這個範例可以反推每一階的大小**：
> ```
> G2 → |a*| = 10.93  →  每階 ≈ 5.47
> Y4 →  b*  = 22.37  →  每階 ≈ 5.59
> ```
> **一階 ≈ 5.5 個 CIELAB 單位**，範圍 0–9 → 最大約 **±50**
> —— 剛好涵蓋實體表面色（surface colour）在 CIELAB 裡的實用色域。
>
> **★ 注意標記的合併寫法**：投影片寫 **`L55 G2Y4`**（G2Y4 連在一起），
> 表示「綠 2 + 黃 4」兩個分量**同時**存在，共同決定 a\*b\* 平面上的一個點。
> 因為 R↔G、Y↔B 是對立的，**同一組不會同時出現**（不會有 `G2R3`），
> 所以最多只需要「一個紅綠分量 + 一個黃藍分量」，剛好對應 **a\* 與 b\* 兩軸**。
> **這就是「Hering 對立色理論 → CIELAB a\*b\* → 商業標記法」的一條完整血脈。**

- **顏色以「反射率」與 XYZ 指定** ★

> **老師重申的核心觀念：「反射率是物體色的指紋（fingerprint）。
> 對色彩工程師而言，只要有反射率，我們就能很快把樣品做出來。」**

- **因為有反射率 → 可以做電腦配色（CCM）** → 直接算出配方（recipe / formulation）
- 端點（endpoints）在 CIELAB 中定義，並有實體樣本對應

---

## 4. OSA-UCS（00:18:48–00:20:17）

**OSA = Optical Society of America（美國光學學會）**

### ★ 它與其他系統的根本差異
```
Munsell / DIN：每個「屬性」各自等間隔
OSA-UCS     ：不管屬性——「整個空間裡任兩點的距離都對應視覺差異」
```
> 也就是**從色差的觀點**出發，而不是從色貌屬性出發。

**幾何結構**：
- 中心放一個標準色
- 周圍有 **12 個等距的鄰居色**（構成一個 12 頂點的多面體）
- **每一對鄰居之間的視覺距離都相同**

**三個軸**：
| 軸 | 意義 |
|---|---|
| **L** | Lightness 明度 |
| **g** | green–red（綠–紅） |
| **j** | yellow–blue（黃–藍） |

---

## 5. Coloroid（00:20:17–00:21:18）

**指導原則（投影片 `L12_s037_020m31s.png`）**
```
Guiding Principles –
   ★ A universal Colour Harmonised System
```
> **★ 全課唯一一個把「和諧（harmony）」寫進指導原則的色序系統。**
> 其他系統的指導原則都是「等間距 / 均勻 / 溝通」這類**知覺或工程**目標；
> Coloroid 的目標是**美學**。這正是 5-1 那句「追求美學均勻而非知覺均勻」的出處。
> **投影片上的產品照標題印的是 `Colorid`（少一個 o），正式名稱是 `Coloroid®`。**

- **匈牙利系統**，由 **Antal Nemcsics** 開發（他本人是**設計師/建築師**）
- 定位：**"Universal colour harmony system"——為設計師而做**
- 特點：**追求「美學上的均勻」而非「知覺上的均勻」**
- 在 xy 圖上可以看出：**黃綠很亮、藍紫很暗、紅落在暗端**
- **色域不大、多數顏色偏暗（dull）**，但這是刻意的——它是給**畫圖**用的

---

## 6. 其他被點名的系統（00:21:18–00:22:23）

**投影片 `L12_s040_021m25s.png`「Some Other Systems」逐字：**
```
· PANTONE
· RAL
· SCOTDIC
· Tintometer
· ISCC-NBS Color Naming System
· ★ Computer spaces: HLS, HSV, TekHVC
```
| 系統 | 說明 |
|---|---|
| **PANTONE** | **扇形色票（fan deck）**——**便宜、方便**，去展覽看到喜歡的顏色隨手翻開對；**「弄壞了也沒關係，重點是拿到色樣」** |
| **RAL** | 德國系統（工業塗裝標準色） |
| **SCOTDIC** | 紡織用色典（Standard Color of Textile DIC，日本 DIC × 英國 SDC） |
| **Tintometer** | Lovibond 比色計（目視比色，油脂 / 啤酒 / 水質） |
| **ISCC-NBS** | 美國色彩**命名**系統（Inter-Society Color Council – National Bureau of Standards） |
| **Computer spaces** | **HLS、HSV、TekHVC** |

> ### ★★ 注意投影片自己就把最後一項另立為「Computer spaces」
> **老師的分類邏輯是清楚的**：前五項是**有實體樣本**的色序系統（或命名系統），
> **HLS / HSV / TekHVC 被歸為「電腦色空間」，是另一類東西。**
> 這正好佐證文末勘誤第 6 條「**HLS / HSV 不是色序系統**」——
> **它們沒有實體樣本、沒有視覺實驗、只是 RGB 的座標變換。**
>
> **★ `TekHVC` 是這裡唯一的例外，值得知道**：
> Tektronix 在 1990 年前後為工作站開發的色空間，**H = Hue、V = Value、C = Chroma**，
> **它是建立在 CIELUV 上的**（由 L\*u\*v\* 轉極座標而來），
> 所以 **TekHVC 有色度學基礎，HLS / HSV 沒有**。
> 這是「模仿 Munsell 三屬性命名」與「真的做到知覺均勻」之間的差別——
> **名字像 HVC 不代表就是色序系統。**

---

## 7. ★★ 為什麼會有這麼多系統？（00:22:23–00:24:22）

**★★★ 投影片 `L12_s041_022m19s.png`「Why do we need so many?」逐字（這是本節的標準答案骨架）**
```
· Why not use a universal notation system?
   – ★ National or industry standards
   – ★ Cost of retaining
   – ★ Historical data

· For now, the solution is to interrelate between existing notation systems.
   – ★ Complex relationship to CIE XYZ.
   – ★ Dissimilar viewing/measurement conditions.
```

老師的自問自答：**「如果大家用同一套多好，為什麼不行？」**

### 7-1 投影片的三個理由（★ 答題就寫這三個）
| # | 投影片原文 | 老師口頭展開的內容 |
|---|---|---|
| **①** | **National or industry standards** | 有些產業就是只用 Munsell，有些只用 NCS；**DIN 是德國國家標準、NCS 是瑞典國家標準**，動不了 |
| **②** | **Cost of retaining** | 「維持成本」——包含**習慣**（「我做了 20、30 年研究都用 Munsell，不願意換」）、**重新訓練的成本（retraining）**、**購置成本**（色書非常貴，換系統要全部重買） |
| **③** | **Historical data** | 所有舊資料都是用某一套系統記錄的，換系統 = 舊資料全部作廢 |

> **⚠️ 我原本列成「五個理由」——那是把②的口頭展開（習慣 / 重訓成本 / 購置成本）拆成三條。**
> **投影片只有三條**，考試照投影片寫三條，口頭那三項當作②的細節即可。

### 7-2 ★★ 現行解法與它的兩個障礙
**投影片原句**：`For now, the solution is to interrelate between existing notation systems.`
```
NCS ─────┐                      ┌─→ Munsell
Munsell ─┼──→ 【 CIE XYZ 】 ──┼─→ NCS
Ostwald ─┤    （共同語言）      ├─→ DIN
DIN ─────┘                      └─→ OSA
```
> **「每一套系統都知道自己與 XYZ 的關係。
> 所以就先轉成 XYZ，再從 XYZ 轉到另一套系統。」**

**★ 但投影片同時列出這條路的兩個障礙——這才是重點：**

| 障礙 | 投影片原文 | 為什麼是障礙 | 前面哪張投影片證實了它 |
|---|---|---|---|
| **① 數學上** | **`Complex relationship to CIE XYZ`** | 各系統與 XYZ 的關係**都不簡單**：NCS/Ostwald 完全沒公式只能查表，Munsell 只有 V 有多項式，DIN 只有 D 有公式 | `L11_s046`（NCS: *No simple relationship*）<br>`L12_s009`（Ostwald: 同上）<br>`L12_s027`（DIN: *Not-so-simple… exist*） |
| **② 條件上** | **`Dissimilar viewing/measurement conditions`** | **各系統用的照明體 / 觀察者根本不同**，XYZ 不能直接比 | **`L12_s020`：DIN 6164 主標準是 D65/2°，另有 D65/10° 與 C/2° 補篇**<br>（Munsell Renotation 用的是 **C/2°**） |

> ### ★★★ 障礙②就是老師「鐵律 ①」的再一次現身
> > **「給你 XYZ 相同就代表顏色相配嗎？不。必須指定幾何、照明體、觀察者。」**
>
> **色序系統之間不能互轉，不是因為數學太難，而是因為它們根本不是在同一個條件下量的。**
> 你把 Munsell（C/2°）的 XYZ 直接餵給 DIN（D65/2°）的查表，得到的是**兩個不同宇宙的數字**。
> **要先做色適應變換（CAT，見 L19）把照明體對齊，才有資格談互轉。**
> —— **這條線把 L12（色序系統）直接接到 L19（CAT），是很漂亮的申論題串接。**

### 7-3 本講的目錄（投影片 `L12_s042_024m19s.png`「Summary」）
```
· Defined colour order.
· Basis of colour order.
· Desirable properties.
· Advantages and disadvantages.
· Systems in details:
   – ★ Munsell, NCS, Ostwald, DIN and Colorcurve
· Applications and future directions.
```
> **★ 注意「Systems in details」只列五個：Munsell、NCS、Ostwald、DIN、Colorcurve。**
> **OSA-UCS、Coloroid、Pantone/RAL/SCOTDIC 等都是課堂上補講的「額外」內容，不在核心清單裡。**
> 如果考題問「本課詳述了哪幾個色序系統」，**答這五個**。
> （這也告訴你複習的優先順序：**這五個要能完整背出五要素**，其餘知道特色即可。）

---

## 8. 老師的閒談：秋天的葉子（00:24:22）

> 「這是這裡（英國）最美的季節。台灣現在看不到楓紅，因為太暖了。
> 你往四周一看，紅、綠、黃混在一起，非常美。
> **這是生物性的——葉子裡的色素會隨時間改變：從綠變紅、再變黃，然後掉落。**」

（他把這稱作「**我自己的楓葉色序系統**」——一個色彩無所不在的提醒。）

---

## 9. 老師對考試的說明（00:27:31–00:28:00）

> **「準備考試就看這些教材。
> 有些地方你可能覺得不夠——那就去找其他教科書。
> 還有問題可以問我，但**我回答時會以我的課程教材為準**。
> 想學更深，就得讀那些教科書。」**

---

## ⚠️ 轉錄勘誤

| 轉錄文字 | 正確 |
|---|---|
| Osterwee / Osterwood / Austro-Wall / asteroid system | **Ostwald** |
| Ding / DIN PSD | **DIN**／**DIN TSD**（Farbton, Sättigung, Dunkelstufe） |
| Herring | **Hering** |
| nancy's（Coloroid 開發者） | **Nemcsics**（Antal Nemcsics） |
| Anton Rao | **RAL**（德國色彩標準） |
| SCOTIC | **SCOTDIC** |
| Intrometer | **Tintometer** |
| ISD / NBS systems | **ISCC-NBS** |
| TecHVC | **TekHVC**（Tektronix HVC） |
| dodeca hedron | 12 個等距鄰居（見下方勘誤） |
| Ray-Dien / Ray-Si | 瑞典（Sweden）／瑞士（Switzerland） |
| MAPO trade color order system | **maple 楓葉**（老師的玩笑） |
| C-Lab / CLAB | **CIELAB** |

---

## 🔍 與標準說法的出入 / 需要留意

### 1. OSA-UCS 的年代被講混了（00:18:48）★
老師自己說「1969…1930…我忘了」。正確的是**兩個不同的委員會**：
| 委員會 | 年代 | 成果 |
|---|---|---|
| **OSA Colorimetry Committee** | **1930s–1943** | **Munsell Renotation（1943）** |
| **OSA Committee on Uniform Color Scales** | **1947 年成立** | **OSA-UCS（1974 發表、1977 出樣本）** |
- 老師把兩者混在一起了。**考試時 Munsell renotation 記 1943、OSA-UCS 記 1970 年代**。

### 2. 「12 面體（dodecahedron）」的說法
- **正確的幾何是：OSA-UCS 採用「面心立方（FCC）/ 菱面體晶格」，每個點恰好有 12 個等距的最近鄰居，這 12 個鄰居構成一個 cuboctahedron（截半立方體）。**
- 十二面體（dodecahedron）有 12 個「面」但 20 個「頂點」，跟這裡說的 12 個「顏色點」不是同一回事。
- **老師要表達的重點是對的：每個顏色被 12 個等距的鄰居包圍**——這正是 OSA-UCS「全空間均勻」的實作方式。

### 3. 「Ostwald 是瑞士標準」— ★ 2026-08-26 由投影片解謎，**老師沒錯，是我誤判**
- **原本的判斷**：Wilhelm Ostwald 是德國（波羅的海德裔）化學家、1909 諾貝爾化學獎得主，
  所以「Ostwald 是瑞士標準」聽起來像口誤，我曾標註「建議不要引用」。
- **★ 投影片 `L12_s049`「Ostwald - History」最後一列白紙黑字寫著**：
  ```
  1960   Swiss Color Atlas 2541
  ```
- **老師講的是這本《瑞士色彩圖冊》（收 2541 色）**，是 Ostwald 系統實體出版品的**瑞士線**，
  **不是**在說「Ostwald 是瑞士的國家標準」。**這一條撤銷。**
- **完整的國別對照（三個系統別搞混）**：
  | 系統 | 人 / 出處的國別 | 實體出版品 | 國家標準地位 |
  |---|---|---|---|
  | **Ostwald** | 德國化學家 W. Ostwald | 美國 *Color Harmony Manual*（1942–58）<br>**瑞士 *Swiss Color Atlas 2541*（1960）** | **沒有國家標準地位**，已停產 |
  | **DIN 6164** | 德國 DIN / BAM | DIN Colour Chart（1953 / 1983） | **德國國家標準** |
  | **NCS** | 瑞典 SIS | NCS Atlas（1979 / Ed.2） | **瑞典 SS、挪威 NS**；<br>投影片寫 **Portugal**、標準文獻寫 **Spain（UNE 48-103）**，見 L11 勘誤 |
- **轉錄仍然混亂**（後面出現「DIN 是德國、是荷蘭系統、是瑞士系統、是 Ostwald 系統」這種錯亂句），
  那是 Whisper 把老師一連串比較的句子接錯了，**以上表為準**。

### 4. ★ DIN Darkness 公式 —— 投影片有給，但常數印錯了
```
投影片 L12_s023 / s026：   D = 10 − 6.1273 · log₁₀( 40.7 · (A / A₀) + 1 )   ❌
正確：                      D = 10 − 6.1723 · log₁₀( 40.7 · (A / A₀) + 1 )   ✅
                                      ↑↑ 27 / 72 顛倒
```
- **A = Y**（樣品亮度因數），**A₀ = 同色度最佳色的亮度因數**（查 LUT）
- **D 的範圍：0（最佳色 = 最亮）到 10（黑）**——**方向與 Munsell Value 相反**
- **驗算**：`A = A₀` 時，`6.1723` → D = 0.00003 ✅；`6.1273` → D = 0.0729 ❌
  投影片 `s014` 定義「D 以最佳色為原點」，**最佳色的 D 必須是 0**，故只有 6.1723 成立
- **我原本註記「老師只給概念沒給公式」是錯的**，公式就在 `s023`；
  但**我當時補的 6.1723 反而才是對的**，可直接使用

### 5. 「Optimum colours」的正式名稱 ★
- 老師講的 optimum colours，正式名稱是 **MacAdam limits（MacAdam 極限）**，又稱 **optimal colour solid**。
- 定義：反射率**只取 0 或 1**、且**最多只有兩個轉換點**的理論反射率曲線所產生的顏色。
- **它是「在給定亮度下，物體色所能達到的最飽和邊界」**——任何真實物體色都在這個立體之內。
- 這個概念在後面談**色域（gamut）**與**演色性**時會再出現。

### 6. HLS / HSV 不是色序系統 ★ 學生最常混淆的地方
- 老師把 RGB、HLS、HSV、TekHVC 列在「其他系統」裡，但沒有區分。
- **HLS / HSV 只是 RGB 的幾何重排（cylindrical transform）**：
  - **裝置相關（device-dependent）**——同一組 HSV 在不同螢幕是不同的顏色
  - **完全不是知覺均勻的**——HSV 的 "S" 與知覺彩度、"V" 與知覺明度都對不上
  - **不符合色序系統四條件的第 3、4 條**（無實體樣本、尺度不均勻）
- **TekHVC** 例外一些：它建立在 **CIELUV** 上，是**裝置無關**的，比較接近色序系統的精神。
- **考試如果問「HSV 算不算色序系統」→ 不算，理由同 Pantone（沒有知覺均勻的尺度、沒有實體樣本）。**

### 7. 「透過 XYZ 互轉」的實務限制（老師只說要條件相似）
- 各系統的**參考條件不同**：Munsell 用 **C/2°**、DIN 提供 **D65/10°**、NCS 用 **D65/10°**。
- 直接把 Munsell 的 XYZ 拿去查 NCS，會因為**照明體與觀察者不同**而錯位。
- 而且各系統與 XYZ 之間**都是查表 + 內插**，不是解析式 → **互轉會累積兩次內插誤差**。
- 所以實務上「A → XYZ → B」的轉換**只能當估計，不能當標準**。這一點老師沒明說，但是實作時的大坑。

---

## 📌 本節可能考點

1. **Ostwald 的兩個指導原則？三個屬性？**
2. **★ Ostwald 為什麼停產？**（full colour 定義在最飽和顏料上，新顏料不斷出現）
3. **NCS 與 Ostwald 在 full colour 處理上的差別？**
4. **DIN 的三個屬性 TSD 各是什麼？Darkness 怎麼定義？**
5. 什麼是 optimum colours？
6. **OSA-UCS 的核心原則與其他系統有何不同？**（全空間均勻 vs 屬性內均勻）
7. Coloroid 的定位？
8. **★ 為什麼會有這麼多色序系統？現行的解決辦法是什麼？**
9. Pantone / HSV 為什麼不算色序系統？
