# L01｜CIE 色度學基礎、光源/照明體、量測幾何
**來源**：`2021-10-30 08-16-54.mp4`（00:00–53:58）｜Lecture 1（上半）
**授課**：羅明 Ming Ronnier Luo（台科大 色彩與照明科技研究所．Applied Color Science 密集課程）

---

## 0. 課程框架（00:04:37–00:08:42）

- 全課 **11 個 Lecture**，三個週末（週六/日）＋ 第三週複習 ＋ 週日考試。考題**全部出自投影片**。
- 老師把整個色彩科學（colorimetry）拆成 **三個階段**，這是貫穿全課的主軸：

| 階段 | 名稱 | 要解決的問題 | 代表工具 |
|---|---|---|---|
| 1 | **Color Specification 色彩規範** | 用數字溝通顏色 | XYZ 三刺激值 |
| 2 | **Color Difference 色差** | 兩色差多少、可不可接受 | CIELAB / CIEDE2000 |
| 3 | **Color Appearance 色貌** | 換了光源/背景/媒體後看起來如何 | CIECAM02 / CAM16 |

> 老師原話：「色度學是**應用科學**（applied science），有人爭論它算不算 science，但它是所有彩色材料應用的根本。」

- 應用場域：跨媒體色彩複製（cross-media color reproduction，螢幕 vs 印刷）、表面色產業（紡織/塗料/塑膠/印刷/包裝/食品/陶瓷/化妝品）、液體色、照明（LED）、彩色影像（手機成像是重中之重）。
### ★ 官方 11 個 Lecture 清單與時程（教材 逐字）

| # | Lecture | 時間 |
|---|---|---|
| 1 | **CIE Colorimetry** | **W1: 30 Oct.（六）** |
| 2 | **Light sources** | 同上 |
| 3 | **Optical property of object colours** | 同上 |
| 4 | **Colour measurement instrument** | 同上 |
| 5 | **Colour vision** | **W1: 31 Oct.（日）** |
| 6 | **Psychophysics** | 同上 |
| 7 | **Colour order systems** | **W2: 6 Nov.（六）** |
| 8 | **Colour difference formulae** | 同上 |
| 9 | **Colour appearance modeling** | **W2: 7 Nov.（日）** |
| 10 | **Colour rendering** | 同上 |
| 11 | **Adaptation** | 同上 |
| — | Review | **W3: 13 Nov.（六）** |
| — | **Final written examination** | **W3: 14 Nov.（日）** |

> **⚠️ 投影片編號 ≠ 實際授課順序。**
> 投影片把 **Light sources 編為 Lecture 2**，但他實際上是 Day 1 先講完 CIE 色度學 → 物體光學性質 → 儀器，**Day 2 才講光源**。
> 同理投影片上 **10 = Colour rendering、11 = Adaptation**，實際授課是**先 Adaptation 後 Colour rendering**（本筆記 L18 → L19）。
> **答題若問「Lecture 幾是什麼」，用投影片的編號。**

### ★ 評分方式
```
· Attendance                              [20 Marks]   出席
· Final written examination (Essay Questions) [80 Marks]  期末筆試（申論題）
    November 14 (Sun.) 9:10 ~ 12:10        ← ★ 三小時
    Classroom: TR-516, TR-517
```

### ★ 指定參考書（教材 完整書單）
1. **《Measuring Colour》, 3rd Edt., Robert Hunt**, Fountain Express, Newpro UK Ltd., **1998**
2. **《Billmeyer and Saltzman's Principles of Colour Technology》, Roy Berns, 3rd Edition**, John Wiley & Sons, New York, **2000**
3. **《Colorimetry: Fundamentals and Applications》, Noboru Ohta and Alan Robertson**, John Wiley & Sons, New York, **2006** ← 課堂上提到但沒聽清的那本，確認就是這本
4. **《Colorimetry – Understanding the CIE system》, Edt. by János Schanda**, John Wiley & Sons, New York, **2007**
5. **中文教科書：《色彩工程》（Color Engineering），Ohta 著、陳鴻興 譯，2007**

**CIE 八個 Division（00:12:13–00:15:21）**
D1 視覺與色彩｜D2 光與輻射的物理量測（metrology）｜D3 室內環境與照明設計｜D4+D5 交通/戶外照明（已合併）｜D6 光生物與光化學｜D7 名詞術語（**任務完成、已關閉**，定義查 CIE 官網）｜D8 影像技術。
老師自陳主戰場是 **D1 與 D8**，且自 1990 年代起長期參與 CIE 標準制定。

---

## 1. 色彩的三要素與 Newton（00:15:21–00:22:36）

- **1666 年 Newton 在劍橋**：牆上開孔引入白光 → 稜鏡 → 分成可見光譜。再加第二個稜鏡**無法再細分**，且各分量可重新合成白光。這是「白光由色光組成、色光不可再分」的關鍵證據。
- 看見顏色需要 **三個元素**：
  1. **光源**（light source）
  2. **物體**（object）
  3. **人眼視覺系統**（human vision system）
- 老師特別強調的觀念：**眼睛只是偵測器（detector）**，把光轉成 R/G/B 訊號；「看到橘色」這件事發生在**大腦**。所以正確講法是 human perception system。

**可見光譜（00:19:02–00:22:05）**
- CIE 定義範圍 **380–780 nm**；但實務有效區間是 **400–700 nm**（400 以下、700 以上幾乎無感）。
- <380 nm = **UV**；>780 nm = **IR**。（老師口語常說 400/700 為界。）
- **重要考點**：各色相在波長軸上**不是等間距**——黃色帶極窄（約 555–590 nm，僅 20–30 nm），紅、綠、紫佔的範圍大得多。
- 單位 nm = 10⁻⁹ m。

---

## 2. Illuminant vs Light Source（00:22:36–00:32:12）

**這組區分是老師反覆強調的核心定義：**

| | 定義 | 例子 |
|---|---|---|
| **Light source 光源** | 真實會發光的**物理體** | 螢光燈管、LED 燈具、鎢絲燈泡 |
| **Illuminant 照明體** | 用 **SPD（spectral power distribution）數表**描述的光，**可以不存在實體** | A、B、C、D65、D50 |

- **Relative SPD 相對光譜功率分布**：不同光源亮度不同，無法直接比較，所以 CIE 一律**歸一化**（常見在 560 nm 定為 100，或 1000、1 都可以）→ 所以叫「相對」。
- 定義一個光源要給什麼？**① SPD ② 色溫（K）**。色溫再細分：distribution temperature、color temperature、**correlated color temperature (CCT)**。D65 = CCT 6500 K。

**標準照明體家族**
- **1931 年**：A（鎢絲，黃紅成分陡升）、B（正午日光）、C（平均日光）
- **1964 年**：**D 系列**（D50 / D55 / D65 / D75），全部在 **560 nm 歸一化**
- 現況（★ 教材 右欄逐字，**比老師口述更精確**）：
  ```
  Colour Temperature (K)
    · Distribution Temp.
    · Colour Temp.
    · Correlated Colour Temp.
  ★ Illuminant B  —  Obsolete        （已廢止）
  ★ Illuminant C  —  Not a standard  （非標準）
  ★ ISO Standard  —  Illuminants A and D65
  ```
  > **老師口頭說「B 很少用、C 極少用」；投影片寫的是「B 已廢止、C 非標準」。**
  > **投影片才是正解**——這也證實了我原本標在出入 B3 的判斷。答題請用投影片的用詞。
- **D 系列的特徵**（00:30:42–00:32:12）：
  - 560 nm 以上有明顯**鋸齒狀起伏**（老師歸因於光通過大氣的吸收）
  - **300–400 nm 的 UV 段強度高**——這點在後面談螢光增白劑（FWA）時是關鍵
- **為什麼要有 D 而不直接用真日光？** 日光最健康、最亮，但**時時刻刻在變**（今天陰天明天晴天），工業評色不能用會變的東西 → CIE 改成「用計算的、固定的數表」。

---

## 3. 螢光燈 FL 系列（00:32:45–00:39:44）

- 特徵：**汞譜線（mercury peaks）**出現在**固定波長**上，這是辨識螢光燈 SPD 的指紋。
- CIE 分類：
  - **FL1–FL6：normal band（普通/鹵磷酸鹽型）**——平坦底 + 紅區一個峰（為了讓膚色/紅色好看）
  - **FL7–FL9：broad band 寬帶**——較平坦
  - **FL10–FL12：三波段（three-band / 窄帶三基色）**
- **必記的三顆**：
  - **FL7 = D65 模擬光源（D65 simulator）**
  - **FL8 = D50 模擬光源**
  - **FL11 = TL84**（歐洲賣場最常用；三波段、**省電且演色性不錯**）
  - **FL2 = CWF cool white fluorescent**（辦公室常用，現逐步淘汰）
- 老師的重點提醒：**FL7 的 SPD 跟 D65 長得完全不一樣，但顏色（色度）被調到一樣**，所以叫 simulator——這正是後面 metamerism（同色異譜）的伏筆。
- 賣場為什麼在意演色性：燈要夠亮客人才進門，但開 12 小時很耗電；**最糟的情況是「店裡看很喜歡、買回家在日光下顏色變了」**。
### ★ CIE 15:2004「Other Illuminants」完整分類（教材 逐字）

```
Fluorescent Lamps
  ├─ FL1 to FL12          (Old set 舊集)
  └─ FL3-1 to FL3-15      (New set 新集)
       ├─ FL3.1–3    Standard halophosphate lamps      標準鹵磷酸鹽燈
       ├─ FL3.4–6    Deluxe type lamps                 高級型
       ├─ FL3.7–11   Tri-band fluorescent lamps        三波段
       ├─ FL3.12–14  Multi-band fluorescent lamps      多波段
       └─ FL3.15     D65 simulator                     D65 模擬光源

High Pressure: HP1 to HP5
  ├─ HP1     Standard high pressure sodium lamp        標準高壓鈉燈
  ├─ HP2     Colour enhanced high pressure sodium lamp 演色性強化高壓鈉燈
  └─ HP3–5   High pressure metal halide lamps          高壓金屬鹵化物燈
```
> **注意 FL3 新集裡也有一支 D65 模擬光源（FL3.15）**——與舊集 FL7 功能相同但光譜更新。
> **HP2「演色性強化高壓鈉燈」** 也是老師口述沒提到的一支。

---

## 4. 反射的兩種型態（00:39:44–00:41:16）

- **Specular reflection 鏡面反射 = 光澤（gloss）**：光**沒有進入**表面，直接從表面反射 → **永遠是光源本身的顏色（白）**，不帶物體顏色。
- **Diffuse reflection 漫反射**：光**進入表面**、被選擇性吸收後再出來 → **這才是我們看到的顏色**（紅黃綠藍）。

---

## 5. CIE 量測幾何（00:41:16–00:50:02）★ 高頻考點

### ★★ 新舊制對照（2026-08-26 由教材「New Specification」原文抄錄）

> **⚠️ 重要更正：舊制不是 6 種，也是 8 種。新舊是「一對一對應」。**

| # | **CIE 15:2 (1986) 舊制** | **CIE 15:2004 新制** |
|---|---|---|
| 1 | `0/45` | **`0°:45°a`** |
| 2 | `0/45` | **`0°:45°x`** |
| 3 | `45/0` | **`45°a:0°`** |
| 4 | `45/0` | **`45°x:0°`** |
| 5 | `d/0-SPI` | **`di:8°`** |
| 6 | `d/0-SPE` | **`de:8°`** |
| 7 | `0/d-SPI` | **`8°:di`** |
| 8 | `0/d-SPE` | **`8°:de`** |

**★ 這張表告訴你 2004 年到底改了什麼（三件事）**：
1. **方向式**：舊制把 `0/45` 寫兩次（無法分辨環形與單束）→ **新制用 `a`（annular 環形）／`x`（單一光束）明確區分**
2. **積分球式**：舊制把含/除鏡面寫成**後綴** `-SPI` / `-SPE` → **新制把它併進符號本身：`di`（diffuse included）／`de`（diffuse excluded）**
3. **近法線角明確化**：舊制寫 `0`（理想法線）→ **新制寫 `8°`**（實際儀器必須偏離法線才裝得下偵測器）

> **⚠️ 老師口頭說「六種」**（`08-16-54.mp4` 00:45:58：「four of them integrating sphere based, and 45/0, 0/45」）——
> 他是把 a/x 兩種變體算成一種。**但他自己的投影片列的是 8 對 8。考題以投影片為準。**

**讀法口訣（老師教的）**：**分號「;」前面 = 照明（光怎麼打進去）；分號後面 = 接收（從哪個角度收）**。
### ★ 符號的正式定義（教材「Symbols」註腳逐字）
```
45°    a : annular            （環形／圓周照明）
       x : azimuthal angle    （★ 方位角）
Diffuse i : included          （含鏡面）
        e : excluded          （除鏡面）
```
> **⚠️ 我原本把 `x` 寫成「單一光束（uni-directional）」——不精確。**
> **投影片的定義是「azimuthal angle 方位角」**：`x` 表示**單一方向的光束，且必須指明其方位角**
> （相對於 `a` 是 360° 一圈全都有）。實際效果是單束沒錯，但**符號本身指的是方位角**。

**舊制記法也有兩種寫法**（兩節的投影片各用一種，意思相同）：
| L01 投影片 | L04 投影片 | 意義 |
|---|---|---|
| `d/0-SPI` | `d/8, SPIN` | **SP**ecular **IN**cluded 含鏡面 |
| `d/0-SPE` | `d/8, SPEX` | **SP**ecular **EX**cluded 除鏡面 |

**積分球的兩個結構重點**：
- **Gloss trap（光澤陷阱）**：可蓋起來（SPI）或打開（SPE）
- **Baffle（擋板）**：擋住光直接射到量測孔、也擋住光直接照樣品，讓照明更均勻

**為什麼積分球比 45/0 好？** 若樣品表面有紋理（如毛衣），單方向照明會因紋理走向使結果差很多；積分球提供**均勻照明**，結果較可靠。

**CIE 規定幾何的真正理由（00:46:29–00:47:30）**：讓**所有儀器廠商做出來的機器彼此一致**——即 **inter-instrument agreement (IIA)**。這是整個產業色彩一致性的基礎。

---

## 6. 反射率曲線與完美反射漫射體（00:50:02–00:53:28）

- 學色彩科學的基本功：**看反射率曲線就能猜出顏色**。
  - 全段高 = 白；全段中 = 灰；全段低 = 黑
  - 長波（600–700）高 = 紅；紅＋一點黃 = 橘
  - 兩端（藍＋紅）高、中間低 = 紫/洋紅
- 老師的說法：「**被反射的其實是物體『不要』的能量**」（吸收掉的才是被物體留下的）——這是他常用的教學比喻。
- **Perfect Reflecting Diffuser (PRD) 完美反射漫射體**：
  - 理想 **isotropic diffuser（各向同性/朗伯體）**
  - 全波長 **100% 反射**
  - 實際上**不存在**，是假想基準
  - 用途：所有儀器的**光度標尺（白→黑）都必須回溯（traceable）到這個白**

---

## ⚠️ 名詞誤植對照

| 常見誤植 | 正確 |
|---|---|
| chart show / charter | chat（線上聊天室） |
| the prison | the **prism**（稜鏡） |
| tier 84 | **TL84** |
| no more band | **normal band** |
| FLE1 to FLE12 | **FL1–FL12** |
| UB | **UV** |
| the ultrasound and the chain | 疑為 **Ohta & Robertson**（書名） |
| vaporization the light | 應指大氣/太陽大氣**吸收線**造成的鋸齒 |
| 160 nanometer | **560 nanometer**（歸一化波長） |
| annual arrangement | **annular**（環形） |

---

## 🔍 與標準說法的出入 / 需要留意的地方

1. **「CIE 分成 1931 系統與 1964 系統，1931=ABC、1964=D」**（00:24:39–00:25:44）
   - 老師把 1931/1964 拿來對應「照明體世代」。
   - **標準用法上，CIE 1931 / CIE 1964 首要是指「2° 標準觀察者」與「10° 補充標準觀察者」**，不是照明體的分期。
   - 歷史上 A/B/C 確實在 1931 提出、D 系列在 1960 年代（1964 年會）加入，所以時間點吻合，但**概念層次不同**。考試若問「CIE 1931 是什麼」，答案應是 2° 標準色度觀察者。這是老師為了好記做的教學簡化。

2. **可見光範圍 380–780 vs 400–700**
   - 老師兩種都講。嚴格說：CIE 色匹配函數 x̄ȳz̄ 的完整定義域是 **360–830 nm**（實用表格常給 380–780）；工程實務多用 400–700 nm。三個數字要分清楚出現的場合。

3. **照明體 B 的地位**
   - 老師說「B 現在很少用」。實際上 **B 已被 CIE 正式廢止（obsolete）**，C 則仍保留於少數產業（部分塗料、Munsell 系統、牙科比色）。「很少用」和「已廢止」有差別。

4. **「鏡面反射永遠是白色」**
   - 對介電質（塑膠、塗料、紡織）成立——這是 **Neutral Interface Reflection (NIR) 假設**。
   - 但對**金屬**不成立：金屬的鏡面反射會帶色（金、銅）。這也是為什麼金屬漆/珠光漆要用**多角度分光儀（multi-angle）**量測，而不是標準的 45/0 或積分球。老師在片頭放的那台 GE 老爺車圖片（00:10:09）正是這個問題。

5. **D 系列照明體沒有真實光源**
   - 老師點到「FL7 是 D65 simulator」，但沒明說核心矛盾：**D65 本身無法被物理實現**，只能用 simulator 逼近，而 simulator 的品質要用 **CIE Metamerism Index (MI)** 來評等（A~E 級）。這在後面 metamerism 那節會補上。

6. **積分球「均勻照明」的但書**
   - 積分球確實對紋理較穩健，但對**強方向性樣品（金屬、珠光、螢光）** 反而會失真；且 SPI/SPE 差值本身就是光澤度的資訊。老師只講了優點。

---

## 📌 本節可能考點

1. 光源（light source）與照明體（illuminant）的差別？
2. 定義一個光源需要哪兩項？（SPD、色溫/CCT）
3. 為什麼 SPD 要用「相對」？在哪個波長歸一化？（560 nm）
4. FL7、FL8、FL11、FL2 各代表什麼？
5. CIE 新制有幾種量測幾何？8 種。`45°a:0°` 怎麼讀？
6. Specular included / excluded 的差別與物理意義？
7. 什麼是 PRD？為什麼需要它？
8. 看反射率曲線判斷顏色。
