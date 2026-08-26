# 羅明教授文獻地圖 + 2021 課後的重大發展
**建立日期**：2026-08-26（第一次文獻迭代）
**用途**：① 把課堂內容追溯回原始論文 ② 補上課程沒教的他的研究 ③ **標記課程已過時之處**

---

# 第一部分：學術檔案

| 項目 | 內容 |
|---|---|
| **現職** | **浙江大學 光電科學與工程學院 專任教授**（State Key Laboratory of Modern Optical Instrumentation） |
| **兼任** | **University of Leeds 客座教授**、**台灣科技大學 客座教授** |
| **論文數** | **約 800 篇**同儕審查論文、**30 項專利** |
| **引用數** | **20,704**（Google Scholar） |
| **h-index / i10** | **61 / 276** |
| **CIE 職務** | **★ Division 1（視覺與色彩）主任（Director）**、**TC 1-75 主席**（A Comprehensive Model of Colour Appearance）、**TC 8-02 主席**（Colour Difference for Images） |
| **學會** | **IS&T Fellow**、**SDC Fellow** |
| **獎項** | **★ AIC 2017 Judd Medal**（色彩科學最高榮譽）、**★ Colour Group (GB) 2020 Newton Award** |

> **★ 課堂上他只說「我參與 CIE 很多年」。實際上他是 Division 1 的主任**——也就是**整個 CIE 視覺與色彩領域的負責人**。這個位階遠超過他自己在課堂上透露的。

---

# 第二部分：課堂內容 → 原始論文對照

**這張表是這次文獻研究最有價值的產出**：他課堂上講的每一件事，幾乎都對應到他自己的一篇論文。

| 課堂內容 | 原始論文 | 引用數 |
|---|---|---|
| **L05 相機多項式特徵化**（3×3 / 3×9 / 3×11 矩陣、訓練 vs 測試） | **Hong, Luo & Rhodes (2001), "A study of digital camera colorimetric characterization based on polynomial modeling", *Color Res. Appl.*** | **727** |
| **L13 BFD 橢圓（博士論文）** | **Luo & Rigg (1986), "Chromaticity-discrimination ellipses for surface colours", *Color Res. Appl.*** | **322** |
| **L13 BFD 色差公式** | **Luo & Rigg (1987), "BFD(l:c) colour-difference formula Part 1 – Development of the formula", *JSDC*** | **300** |
| **L13 ★ CIEDE2000（五項修正）** | **★ Luo, Cui & Rigg (2001), "The development of the CIE 2000 colour-difference formula: CIEDE2000", *Color Res. Appl.* 26(5), 340–350** | **★ 3,207（他最高引用）** |
| 同上，後續澄清 | Luo (2002), "Further comments on CIEDE2000", *Color Res. Appl.* | — |
| **L14 參數效應與 crispening effect** | **Guan & Luo (1999), "Investigation of parametric effects using small colour differences", *Color Res. Appl.*** | **206** |
| **L14 CAM02-UCS / SCD / LCD** | **★ Luo, Cui & Li (2006), "Uniform colour spaces based on CIECAM02 colour appearance model", *Color Res. Appl.*** | **510** |
| **L16 LUTCHI 色貌資料集** | **★ Luo, Clarke, Rhodes, Schappo, Scrivener & Tait (1991), "Quantifying colour appearance. Part I. LUTCHI colour appearance data", *Color Res. Appl.*** | **263** |
| **L17 CIECAM97s** | **Luo & Hunt (1998), "The structure of the CIE 1997 colour appearance model (CIECAM97s)", *Color Res. Appl.*** | **325** |
| **L17 CIECAM02** | **Moroney, Fairchild, Hunt, Li, Luo & Newman (2002), "The CIECAM02 color appearance model", IS&T/SID CIC10** | **732** |
| **L17 CAM16 / CAT16 / CAM16-UCS** | **★ Li, Li, Wang, Xu, Luo, Cui, Melgosa, Brill & Pointer (2017), "Comprehensive color solutions: CAM16, CAT16, and CAM16-UCS", *Color Res. Appl.* 42(6), 703–718** | **369** |
| **L17 跨媒體工作流程中的色域映射** | **Morovič & Luo (2001), "The fundamentals of gamut mapping: A survey", *J. Imaging Sci. Technol.*** | **280** |
| 同上（色域邊界計算） | Morovič & Luo (2000), "Calculating medium and image gamut boundaries for gamut mapping", *Color Res. Appl.* | 168 |
| **L19 色適應變換** | **Li, Luo, Rigg & Hunt (2002), "CMC 2000 chromatic adaptation transform: CMCCAT2000", *Color Res. Appl.*** | **171** |
| 其他均勻色空間 | Cui, Luo, Rigg, Roesler & Witt (2002), "Uniform colour spaces based on the DIN99 colour-difference formula", *Color Res. Appl.* | 171 |
| **色貌模型的總覽（推薦入門）** | **Luo & Pointer (2018), "CIE colour appearance models: A current perspective", *Lighting Res. Technol.*** | — |

**★ 讀論文的建議順序（若要深入）**：
```
1. Luo & Pointer (2018) 綜述        ← 先看全景
2. Luo, Cui & Rigg (2001) CIEDE2000 ← 課程 L13 的完整版
3. Luo, Cui & Li (2006) CAM02-UCS   ← 課程 L14 的完整版
4. Li et al. (2017) CAM16           ← 課程 L17 的完整版
5. Luo et al. (1991) LUTCHI         ← 所有色貌模型的資料基礎
```

---

# 第三部分：★★★ 2021 課後的重大發展（課程內容已過時之處）

**這是本次研究最重要的部分。** 課程錄於 2021 年 11 月，之後有幾件事直接改變了課堂結論。

## E1. ★★★ CAM16 已經正式成為 CIE 標準：**CIECAM16 = CIE 248:2022**

**課堂原話（L17，`09-09-22.mp4` 00:01:27）**：
> 「到 2016 年我們有了新模型叫 CAM16。**它還沒有正式成為 CIECAM16。**
> 它是 CIECAM02 的一個修正版。」

**現況（2022 年起）**：
> **CIE 248:2022 — *The CIE 2016 Colour Appearance Model for Colour Management Systems: CIECAM16***
> **已正式發布，並取代 CIE 159:2004（CIECAM02）。**

**CIE 官方對它的定位**：
- 適用範圍：**攝影印刷品與自發光顯示器的評估，顏色被感知為「相關色（related colours）」**
- 與 CIECAM02 的差別：**「CIECAM16 比原本的 CIECAM02 更簡單，但對視覺資料維持相同的預測效能。」**
- 使用 **CIE 1931 標準色度觀察者（2°）**

> **★ 對筆記的影響**：L17 說「CAM16 尚未正式成為 CIECAM16」**已經過時**。
> 現在正確的說法是：**CIECAM02（CIE 159:2004）已被 CIECAM16（CIE 248:2022）取代。**
> 新專案應該用 CIECAM16 / CAT16 / CAM16-UCS。

## E2. ★★ CAM16 的作者名單要更正

**課程筆記原本寫的**（由逐字稿推測）：Li, Li, Wang, Zu, **Luo, Hunt, Pointer, Fairchild**

**正確的作者名單**：
> **Li C., Li Z., Wang Z., Xu Y., Luo M.R., Cui G., Melgosa M., Brill M.H., Pointer M. (2017)**

**要更正的三點**：
| 錯 | 對 |
|---|---|
| **Hunt** 是作者 | **不是**。Hunt 是 CIECAM97s 的共同作者，**不在 CAM16 名單上** |
| **Fairchild** 是作者 | **不是**。Fairchild 是 CIECAM02 的共同作者，**不在 CAM16 名單上** |
| **Zu** | **Xu（Y. Xu）** |
| （漏掉的） | **Melgosa M.**（Granada，就是 L14 提到做 CIEDE2000 顯著性檢定的那位）、**Brill M.H.**、**Cui G.** |

## E3. ★★ CAM16 的核心改變：官方說法與課堂說法不同

**課程筆記原本寫的（D22）**：CAM16 的貢獻是**修掉 CAT02 在極飽和藍紫色算出負錐值的問題**。

**論文摘要的官方說法**：
> **「CIECAM02 的結構被改變，使得『色適應』與『亮度適應』在**同一個空間**中完成，
> 而不是像原本的 CIECAM02 那樣在**兩個不同的空間**中完成。」**

**兩者都對，但重點不同**：
```
課堂/我原本的說法：解決 CAT02 的負值 → 穩健性     （結果）
論文的官方說法  ：把兩階段適應合併到同一空間 → 簡化 （手段）
```
**正確的完整敘述**：CIECAM02 在 **CAT02 空間**做色適應、在 **Hunt–Pointer–Estévez 空間**做亮度適應，需要在兩個空間之間來回轉換；**CAM16 統一用 CAT16 一個空間完成兩者** → **既簡化了計算，也順帶消除了負值問題**。

## E4. ★★ Hellwig & Fairchild (2022)：CAM16 的明度/彩度方程式被指出有問題

**論文**：Hellwig L. & Fairchild M.D. (2022), *"Brightness, lightness, colorfulness, and chroma in CIECAM02 and CAM16"*, **Color Res. Appl.**（RIT Munsell Color Science Laboratory）

**論點**：
1. 在 CIECAM02 / CAM16 中，**brightness Q 是 lightness J 的「非線性」函數**——這個非線性可以追溯到 **Hunt 模型**的歷史遺產
2. 他們提出一個**更穩健的「線性」明亮度–明度關係**
3. 這連帶迫使 **chroma、colourfulness、saturation 的方程式全部重新評估**
4. 用 **Munsell 色序系統**與**羅明的 LUTCHI 資料集**驗證，表現優於原始 CAM16

**★ 對筆記的影響**：L16 的核心關係式 **`J = Q/Q_w`、`C = M/Q_w`、`s = M/Q = C/J`**
—— **概念層次完全不受影響、仍然是考試標準答案**。
Hellwig & Fairchild 動的是**「Q 與 J 之間那個非線性函數的具體形式」**，不是這幾個「比值定義」。

**同期姊妹論文**：Hellwig & Fairchild (2022), *"Extending CIECAM02 and CAM16 for the Helmholtz–Kohlrausch effect"*
→ **Helmholtz–Kohlrausch 效應**：**高彩度的顏色看起來比同亮度的中性色更亮**。這是課程完全沒提、但在 HDR 與廣色域顯示上影響很大的效應。

## E5. ★ CAM16-UCS 也被修訂

**論文**：Hellwig & Fairchild, *"Revising CAM16-UCS"*, **CIC30 (2022)**

- 因為 E4 改了明度/彩度方程式，**對應的均勻色空間 CAM16-UCS 也必須跟著更新**
- 同時處理了現行 CAM16-UCS 公式的**理論與統計上的不一致**
- **★ 用 STRESS 指標**推導新公式並比較 —— **印證了筆記 B35「PF/3 已被 STRESS 取代」的補充**

## E6. ★ CAM20u：專門處理「非相關色」

- **CAM20u 是 CAM16 的延伸，用來預測「非相關色（unrelated colours）」的色貌**
- 這正好呼應筆記 **D7** 的推論：**非相關色沒有參考白 → 只有 Q、M、s、h，沒有 J 和 C**
- CIE 248:2022 明確把自己限定在**相關色**；非相關色需要另外的模型
- 相關脈絡：**TC 1-75「A Comprehensive Model of Colour Appearance」（羅明任主席）** 的目標就是做出一個能同時處理**相關色與非相關色、不同尺寸、中間視覺與明視覺**的統一模型

## E7. ★ 他現在的研究主線：HDR

課堂上（L13 `10-09-15.mp4` 00:06:01）他說「我們現在在做很挑戰的 HDR 與廣色域顯示器色差，剛在 CIC 發表兩篇」。這條線在 2025–2026 已經開花：

| 年份 | 論文 |
|---|---|
| 2025 | **Shi et al., "Applying Color Appearance Model CAM16-UCS in Image Processing Under HDR Viewing Conditions", *Color Res. Appl.*** |
| 2025 | **Zhou et al., "Comparison of HDR Display Characterization Methods Using Limited Sampling Points", SID Symposium Digest** |
| 2026 | **"Lightness-Based Spatially Adaptive Tone and Colorfulness Reproduction for HDR Imaging", *Color Res. Appl.* 51(2)** |
| — | **"Developing HDR Tone Mapping Operators Based on Uniform Colour Spaces"**（Springer 專章） |

**主軸**：**累積 HDR 視覺資料 → 驗證並修改 CAM16-UCS**。
> 這證實了筆記 **D-（L17 出入第 7 點）**的判斷：**CIECAM02/CAM16 在 HDR（>10000 cd/m²）下未經充分驗證**——他自己正在補這塊。

---

# 第四部分：課程沒教、但佔他研究很大比重的領域

**★ 這是課程的最大盲區。** 他的**第二高引用論文群**完全沒有出現在這 11 個 Lecture 裡。

## F1. ★★ 色彩情感與色彩偏好（Colour Emotion & Colour Preference）

**論文三部曲**：**Ou, Luo, Woodcock & Wright (2004)**, *Color Res. Appl.*
| 部 | 主題 | 引用 |
|---|---|---|
| **Part I** | **單色的色彩情感** | **★ 1,157（他的第二高引用）** |
| Part II | 雙色組合的色彩情感 | 386 |
| Part III | **色彩偏好建模** | 404 |

**實驗設計**（可以直接對照 L09/L10 的心理物理方法）：
- **31 位觀察者：14 位英國人 + 17 位中國人**（跨文化設計）
- **20 個顏色**、**10 組色彩情感語意尺度**：
  ```
  warm–cool（暖–冷）      heavy–light（重–輕）    modern–classical（現代–古典）
  clean–dirty（乾淨–髒）   active–passive（主動–被動）  hard–soft（硬–軟）
  tense–relaxed（緊張–放鬆） fresh–stale（新鮮–陳舊）
  masculine–feminine（陽剛–陰柔）  like–dislike（喜歡–不喜歡）
  ```

**★★ 核心成果：因素分析萃取出「三個色彩情感因子」**
```
① Colour Activity   色彩活性
② Colour Weight     色彩重量
③ Colour Heat       色彩溫度
```

**★ 色彩偏好模型的關鍵發現**：
> **色彩偏好可以用 clean–dirty、tense–relaxed、heavy–light 三個情感來預測，
> 其中「clean（乾淨）」的影響最大。**

**延伸**：**Ou & Luo (2006), "A colour harmony model for two-colour combinations", *Color Res. Appl.*（339 引用）** —— 色彩調和模型。

**為什麼重要**：
- 這條線把**色彩科學**接到**設計、行銷、產品開發**——是純工程色度學沒有的維度
- 已經有**美國專利**（色彩顯示與色彩選擇系統，基於色彩情感與色彩調和）
- **對台科大「色彩與照明科技研究所」的設計背景學生，這可能比 CIEDE2000 更實用**

## F2. 食品外觀與期待

**Wei, Ou, Luo & Hutchings (2012), "Optimisation of food expectations using product colour and appearance", *Food Quality and Preference*（156 引用）**
→ 用色彩科學預測「食物看起來好不好吃」。呼應 L16 的「記憶色 / 香蕉熟度」示範。

## F3. 照明品質

課堂 L06/L19 只講到 CRI。他實際上在**照明品質評價**（whiteness、演色性新指標、晝夜節律照明）有大量工作，發表在 *Lighting Research & Technology*。
例：**Liang, Georgoula, Zou, Cui & Luo (2018), "Colour difference evaluation using display colours", *Lighting Res. Technol.***

## F4. 百科全書

**《Encyclopedia of Color Science and Technology》(Springer)** —— **羅明是第一版（2016）的主編**。
第二版（2023, Shamey 主編）已累積 322 次引用。
> **這是查任何色彩科學名詞最權威的單一來源**，比教科書更新更快。

---

# 第五部分：本次迭代對既有筆記的修正清單

| 編號 | 需要改的地方 | 改成什麼 | 已更新 |
|---|---|---|---|
| **E1** | L17：「CAM16 尚未正式成為 CIECAM16」 | **CIECAM16 = CIE 248:2022，已取代 CIE 159:2004** | ✅ |
| **E2** | L17：CAM16 作者含 Hunt、Fairchild、"Zu" | **正確為 Li, Li, Wang, Xu, Luo, Cui, Melgosa, Brill, Pointer**；Hunt 與 Fairchild **不在**名單上 | ✅ |
| **E3** | D22：CAM16 的貢獻只講負值問題 | 補上官方說法：**色適應與亮度適應合併到同一空間** | ✅ |
| **E4** | L16：Q–J 關係 | 補註：**Hellwig & Fairchild (2022) 提出線性關係取代非線性**；但 `s = M/Q = C/J` 的比值定義不受影響 | ✅ |
| **E5** | L14：CAM02-UCS | 補上 **CAM16-UCS 已被 Revising CAM16-UCS (CIC30, 2022) 修訂** | ✅ |
| **E6** | D7：非相關色只有 Q,M,s,h | 補上 **CAM20u** 與 **TC 1-75** 的脈絡 | ✅ |
| **文獻** | 各節缺原始論文出處 | 本檔第二部分的對照表 | ✅ |
| **盲區** | 課程完全沒提色彩情感/偏好/調和 | 本檔第四部分 | ✅ |
| **職務** | SKILL.md：「長期參與 CIE」 | **CIE Division 1 主任、TC 1-75 與 TC 8-02 主席** | ✅ |

---

# 第六部分：第二輪研究（2026-08-26）

## G0. ★ 老師的英文名字：**Ming Ronnier Luo**

| 項目 | 內容 |
|---|---|
| **完整署名** | **Ming Ronnier Luo** |
| **論文常見縮寫** | **M. R. Luo** 或 **M. Ronnier Luo** |
| **口語/一般稱呼** | **Ronnier Luo**（浙大個人首頁直接叫 *"Ronnier's homepage"*；Stanford Talks、Academia.edu 也都用 Ronnier Luo） |
| **中文** | **羅明** |
| **結構** | 姓 **Luo（羅）**；**Ming（明）** 是本名；**Ronnier** 是他的英文名，**不是** Ming 的音譯 |
| **職稱** | **Chair Professor**（講座教授），浙江大學光電科學與工程學院 |

> **要引用他的論文就寫 `Luo, M. R.`；口頭提到就說 `Ronnier Luo` 或 `Professor Luo`。**

**Fellow 身分（比第一輪查到的更完整）**：**Optica Fellow**、**SDC Fellow（英國染色家學會）**、**IS&T Fellow（美國影像科學與技術學會）**

**★ 近期公開活動**：**2026 年 4 月 8 日 Optica Webinar —— "Color Appearance Research and Applications"**
主題是人類色知覺基礎與現代色貌模型如何預測不同環境/裝置下的視覺經驗，應用於顯示器、相機、影像技術；**內容明確提到 CAM16**。
→ **這是目前能取得的、他本人最新的公開演講。**

---

## G1. ★★★ A18 結案：**CRI 用的是 1931 2° 觀察者，老師課堂說的 10° 是錯的**

**CIE 13.3 的計算程序（逐步確認）**：

| 步驟 | 內容 | 與課堂說法比對 |
|---|---|---|
| 觀察者 | **★ CIE 1931 2° 標準觀察者** —— 原文：*"Using the 2° standard observer, find the chromaticity co-ordinates of the test source."* | ⚠️ **老師說 10°，錯誤** |
| 色適應 | **von Kries 型色適應變換** | ✅ 老師說法正確 |
| 色差空間 | **CIE 1964 U\*V\*W\*（CIEUVW）**；色度位移在 **CIE 1960 UCS** 上處理 | ✅ 正確 |
| 特殊指數 | **R_i = 100 − 4.6 · ΔE_i** | ✅ 正確 |
| 一般指數 | **Ra = 8 個色樣的算術平均** | ✅ 正確 |
| 參考光源 | CCT < 5000 K → Planckian；≥ 5000 K → D 系列 | ✅ 正確 |

**★ 8 個測試色樣的 Munsell 標記（完全驗證了我第一輪補的表）**：
```
TCS01  7.5R 6/4   淡灰紅
TCS02  5Y   6/4   深灰黃
TCS03  5GY  6/8   強黃綠
TCS04  2.5G 6/6   中等黃綠
TCS05  10BG 6/4   淡藍綠
TCS06  5PB  6/8   淡藍
TCS07  2.5P 6/8   淡紫藍
TCS08  10P  6/8   淡紅紫
```
**全部 Value = 6，Chroma 4–8**（老師說「彩度都是 4」是簡化，實際是 4–8）。
**R9 = 飽和紅**，被明確描述為高 CRI 應用的「vital（關鍵）」指標，**但不計入 Ra**。**R13 與 R15 是膚色**。

---

## G2. ★★★ 更大的發現：**CIE 已在 2025 年 1 月正式建議「用 Rf 取代 CRI」**

**CIE Position Statement on Colour Quality Metrics（2025 年 1 月發布）**

> **CIE 正式建議照明產業，從過時且有時不準確的 General Colour Rendering Index (CRI/Ra)，
> 轉換到 CIE 224:2017 定義的 General Colour Fidelity Index (Rf)。**

**CIE 自己列出的 CRI 問題**（CRI 上次更新是 **1974 年**）：
1. **使用過時的色空間（CIE 1960）**
2. **只用 8 個色樣**
3. **★ 對窄帶發光體（narrow band emitters，也就是 LED）特別有問題**

**重要細節**：
- **CIE 224:2017 的 Rf 與 IES TM-30-18 的 Rf 已經完全一致（harmonized）** —— 這是兩大體系整合的關鍵一步
- **但這份聲明只談「保真度（fidelity）」，沒有納入 TM-30 的 Rg（色域指數）或 Preference Design Intent**
- **TM-30 的完整做法是 Rf（保真度）+ Rg（偏好/飽和度）雙指標**

> **★ 對筆記的影響：L19 整節在教的 Ra，CIE 自己已經建議停用了。**
> 課程內容仍然要學（它是歷史基礎、也還在法規與產品標示裡），
> **但實務選燈、寫規格、做研究應該改用 Rf，並同時看 Rg 與 R9。**

**額外補充的 CRI 缺陷**（Wikipedia 整理，補足我第一輪的 D27）：
- **「CRI 對 5000 K 以下的光源特別不適合做視覺評估」**
- **★ CRI 在 5000 K 處是「不連續的」** —— 因為參考光源在此切換（黑體 ↔ D 系列）。這是比我原本寫的「不同色溫不能互比」更精確的說法
- 只有 8 個色樣 → **廠商可以針對這 8 個色樣「優化光譜」來刷分**
- 其他替代指標：**CQS（NIST，改用 CIELAB）**、**GAI（色域面積指數）**、**TLCI（影視專用）**

---

## G3. ★ CIE 2006 CMF 的現況：**羅明推的方向有了官方路線圖，但尚未取代 1931，且有爭議**

**課堂立場（C1）**：老師 2021 年說「我們發現 CIE 1931 2° 有問題，正在推廣 CIE 2006 CMF」。

**2026 年的現況**：
| 進展 | 狀態 |
|---|---|
| **CIE 已發布《A roadmap toward basing CIE colorimetry on cone fundamentals》技術報告** | ✅ 官方路線圖存在 |
| **CIE 與 CCPR（國際計量委員會光度輻射度諮詢委員會）已在考慮**採用基於錐細胞基礎的 V(λ) 取代現行函數 | 🔄 討論中 |
| **★ 但「有顯著的爭議（significant controversy）」** | ⚠️ 未定案 |
| **完整取代 CIE 1931 標準觀察者** | ❌ **尚未發生，仍在發展階段** |

**路線圖的目標**（值得記，因為正是老師課堂上講的三件事）：
> 建立一套**完整、自洽、直接基於錐細胞基礎**的 CIE 色度量測系統，
> **明確考慮錐細胞基礎因「年齡、視野大小、個體差異」造成的正常變異。**

**相關文件**：
- **CIE 170-1:2006 / 170-2:2015**（生理軸基礎色度圖 Part 1 & 2）
- **CIE 015:2018《Colorimetry, 4th Edition》** —— 現行色度學的權威版本
- **ICC Technical Note TN-06-2025《Recommendations on calculation of tristimulus values》**（2025）—— 色彩管理實務端的最新建議

> **★ 結論：老師在課堂上講的不是既成事實，而是他正在推動的一場「仍未定案的改革」。**
> 這一點在 C1 要標清楚——**考試答 1931/1964；但要知道他站在改革派這一邊，而且改革至今未成。**

---

## G4. ★ 他在「白度（Whiteness）」上的工作

**論文**：Wang Y. 等（含 M. R. Luo），**"Proposal of a new whiteness formula based on CAM16-UCS"**，CIE 2019 會議論文（浙大現代光學儀器國家重點實驗室）

**現行 CIE 白度公式（W, Ganz–Griesser 型）的兩個限制**：
1. **定義的白色邊界太窄**
2. **只在 CIE D65 照明體下有定義**

**他們的做法**：提出**基於 CAM16-UCS 的新白度評價系統**（新白色邊界 + 新白度公式），對現有資料集預測準確。

> **這條線與 L01/L05 講的「螢光增白劑（OBA）」直接相關**——白度是紡織、紙業、洗劑產業最在意的單一指標，而課程只在講 OBA 量測時擦邊帶過。

---

# 待驗證 / 下一輪要查的

**第一輪的清單（本輪處理狀況）**
- [x] ~~CRI 用 2° 還是 10°~~ → **G1 已結案：2°，老師說錯**
- [x] ~~CIE 224:2017 Rf 與 IES TM-30 的狀態~~ → **G2 已結案，且發現 CIE 2025 年的正式立場聲明**
- [x] ~~CIE 2006 CMF 在 2021 後的動作~~ → **G3 已結案：有官方路線圖但有爭議、未定案**
- [x] ~~他在 whiteness 上的貢獻~~ → **G4**
- [x] ~~他的英文名字~~ → **G0：Ming Ronnier Luo**
- [ ] **TC 1-75 是否已產出報告**（他是主席）—— 兩輪都沒查到具體產出，可能仍在進行
- [ ] CIEDE2000 之後是否有 CIE 認可的新色差公式（兩輪都指向：**沒有，CIEDE2000 仍是唯一 CIE 標準色差公式**）
- [ ] 他 800 篇論文中關於**紡織/塗料配色實務**的部分
- [ ] 他在**晝夜節律照明 / CIE S 026**（課程 L06 提到的 photobiology lighting）上的具體貢獻

**本輪新增的待查**
- [x] ~~CIE 224:2017 Rf 的完整計算流程~~ → **✅ 已完成，寫成 `L20_演色性新指標_Rf_Rg_ColorVectorGraphic.md`**
- [x] ~~TM-30 的 Rg 與 Color Vector Graphic 怎麼讀~~ → **✅ 同上（L20 第 2–4 節）**
- [ ] **L20 裡標記的五個「待標準原文確認」項目**（Rf 的對數軟下限式、16 色相區精確角度、局部指標計算式、Design Intent 門檻表、99 CES 的篩選來源）→ 需要 **ANSI/IES TM-30-20 原文** 或 **David et al. 2015 Optics Express 全文 PDF**
- [ ] **CIE 015:2018 Colorimetry 4th ed.** 與課程內容（多半基於 CIE 15:2004）的差異
- [ ] **Helmholtz–Kohlrausch 效應**的量化模型（Hellwig & Fairchild 2022 的版本）
- [ ] **CAM20u** 的完整定義（非相關色）
- [ ] 2026-04-08 Optica webinar 的內容（若事後有錄影/講稿）

---

# 參考來源

- [Ming Ronnier Luo — Google Scholar](https://scholar.google.com/citations?hl=en&user=iQ17HxkAAAAJ)
- [Ming Ronnier Luo — 浙江大學 CEL](http://cel.zju.edu.cn/2019/0309/c27449a1076553/page.htm)
- [Luo, Cui & Rigg (2001) CIEDE2000 — Wiley](https://onlinelibrary.wiley.com/doi/10.1002/col.1049)
- [Li et al. (2017) CAM16, CAT16, CAM16-UCS — Wiley](https://onlinelibrary.wiley.com/doi/abs/10.1002/col.22131)
- [CIE 248:2022 CIECAM16 — CIE 官方](https://cie.co.at/publications/cie-2016-colour-appearance-model-colour-management-systems-ciecam16)
- [Hellwig & Fairchild (2022) Brightness, lightness, colorfulness, chroma — Wiley](https://onlinelibrary.wiley.com/doi/abs/10.1002/col.22792)
- [Hellwig & Fairchild (2022) Helmholtz–Kohlrausch extension — Wiley](https://onlinelibrary.wiley.com/doi/10.1002/col.22793)
- [Hellwig & Fairchild — Revising CAM16-UCS (CIC30)](https://library.imaging.org/admin/apis/public/api/ist/website/downloadArticle/cic/30/1/48)
- [Luo & Pointer (2018) CIE colour appearance models: a current perspective — SAGE](https://journals.sagepub.com/doi/abs/10.1177/1477153517722053)
- [Ou, Luo, Woodcock & Wright (2004) Colour emotion Part I — Wiley](https://onlinelibrary.wiley.com/doi/abs/10.1002/col.20010)
- [Shi et al. (2025) CAM16-UCS under HDR — Wiley](https://onlinelibrary.wiley.com/doi/abs/10.1002/col.22972)
- [Sharma et al. (2005) CIEDE2000 Implementation Notes — Rochester](https://hajim.rochester.edu/ece/sites/gsharma/papers/CIEDE2000CRNAFeb05.pdf)
