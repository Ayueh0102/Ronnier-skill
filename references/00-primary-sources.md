# 原始論文蒸餾（手邊 PDF 全文）
**來源**：原始論文全文（整理時參閱，PDF 不隨附）
**日期**：2026-08-26
**性質**：這是**唯一一份完全基於原始論文全文**的參考檔——前面的 `00-literature.md` 是二手來源，這份是一手。
遇到衝突時，**以本檔為準**。

**手邊四篇（`浙大CMA16.pdf` 與 `Li_et_al` 為同一篇）**：

| 檔案 | 論文 |
|---|---|
| `Li_et_al-2017-Color_CRA_CAM16.pdf`（＝`浙大CMA16.pdf`） | **Li et al. (2017), "Comprehensive color solutions: CAM16, CAT16, and CAM16-UCS", *Color Res. Appl.*** |
| `The_CIECAM02_color_appearance_model.pdf` | **Moroney et al. (2002), "The CIECAM02 Color Appearance Model", CIC10** |
| `CIC_2022_3_Yuechen--Zhu.pdf` | **Zhu & Luo (2022), "A Revised Formulation Based on CIECAM16 for Cross-Media Colour Reproduction via Real Scene Experiment", CIC30** |
| `Color_and_Morphology_Camouflaging_using_Biomimetic.pdf` | Kamrava et al., 仿生鱗片偽裝 —— **與本課程無關**（工程材料領域），不納入 |

---

# 一、Li et al. (2017) — CAM16 / CAT16 / CAM16-UCS

## 1-1 ★ 作者名單（完全確認 E2 的更正）
> **Changjun Li¹˒², Zhiqiang Li¹, Zhifeng Wang¹, Yang Xu¹, Ming Ronnier Luo³˒⁴,
> Guihua Cui², Manuel Melgosa⁵, Michael H. Brill⁶, Michael Pointer³**

| 作者 | 單位 |
|---|---|
| Li, Li, Wang, Xu | 遼寧科技大學 電子與資訊工程學院 |
| Cui（崔）、Li | 溫州大學 |
| **Luo** | **Leeds 設計學院 + 浙大現代光學儀器國家重點實驗室** |
| **Melgosa** | **Granada 大學光學系（西班牙）** ← 就是 L14 提到做 CIEDE2000 顯著性檢定的那位 |
| **Brill** | **Datacolor（美國）** ← 產業界代表 |
| Pointer | Leeds |

> **⚠️ 再次確認：Hunt 與 Fairchild 都不是作者。**
> Hunt 是 **CIECAM97s**（與 Luo）與 **CIECAM02** 的共同作者；Fairchild 是 **CIECAM02** 的共同作者。
> 通訊作者是 **Luo（m.r.luo@leeds.ac.uk）**。

## 1-2 ★★★ CIECAM02 到底是怎麼壞的（比課堂與二手資料都精確）

**課堂/二手的說法**：「CAT02 在極飽和藍紫色會算出負的錐細胞值」——**方向對，但不是失效的位置。**

**論文原文的機制**：
> **"this problem mainly comes from the lightness computation"**

```
J = 100 · (A / A_w)^(cz)                              …… (1)

A = [ 2R'a + G'a + (1/20)B'a − 0.305 ] · N_bb          …… (2)
```

**失效鏈（三步）**：
1. **A_w（白的無彩訊號）對所有 CIE 照明體恆為正**（Li & Luo 已證明）
2. **但樣品的 A 可以是負的**
3. → `(負數)^(非整數 cz)` **在數學上無定義** → **計算程序直接中斷（early termination）**

> **★ 所以正確的敘述是：
> 「負值」出現在『無彩訊號 A』，而『崩潰』發生在『明度 J 的非整數次方』。
> 這是一個典型的跨媒體影像處理當機——不是精度問題，是程式直接掛掉。**

## 1-3 ★★ 為什麼「只換矩陣」的修法全部失敗
論文明說，先前的補救方案（用 **M_HPE** 或 **M_OPT** 矩陣取代 CAT02 矩陣、**保持 CIECAM02 原結構**）：
> **"both matrices failed because they focused on solving the mathematical problem
> at the expense of losing accuracy in the prediction of the results from visual experiments."**

**→ 所以結論是：必須改結構。**

## 1-4 ★★★ CAM16 的結構改變（一句話）
> **"the color and luminance adaptations to the illuminant are completed in the same space
> rather than in two different spaces, as in the original CIECAM02 model."**

具體做法：
```
CIECAM02：色適應用 M02（CAT02 矩陣）→ 再轉到 M_HPE（Hunt–Pointer–Estévez）做亮度適應
            ↑ 兩個空間，要來回轉換

CAM16   ：★ 用「同一個矩陣 M16」取代 M02 與 M_HPE 兩者
            → 兩個適應在同一個「cone-like 空間」完成
```

## 1-5 ★★ M16 是怎麼被決定的——這個設計約束很漂亮
論文把「不能壞掉」直接寫成矩陣的**數學約束**：

```
約束 (14)：  M · [ x̄(λ), ȳ(λ), z̄(λ) ]ᵀ  ≥ 0     對所有波長 λ
             且對 2° 與 10° 觀察者都成立

約束 (15)：  M 每一列的元素和 = 1

約束 (13)：  nesting rule：X_CIE ⊆ X_M
```

**推論鏈**：
```
M 作用在色匹配函數上恆非負
   → R, G, B 恆非負（因為適應對角矩陣 K(D) 恆非負）
   → 無彩訊號 A 恆非負
   → J = 100·(A/A_w)^cz 永遠算得出來（A_w 恆正）
   → ★ 模型「在數學上不可能崩潰」
```
> **這是本篇最值得學的一課：不是事後補丁，而是把「不會壞」寫進最佳化的約束條件裡。**

## 1-6 ★ 效能結論（比二手資料精確）
| 比較 | 結果 |
|---|---|
| **CAT16 vs CAT02**（對應色資料） | **表現相當（equally well）** |
| **★ 但 CAT16 滿足 nesting rule，CAT02 不滿足** | 這是 CAT16 的額外優勢 |
| **CAM16 vs CIECAM02（明度 lightness）** | **相當** |
| **★ CAM16 vs CIECAM02（鮮豔度 colourfulness、色相組成 hue composition）** | **CAM16 更好** |
| **CAM16-UCS vs CAM02-UCS** | 在**小色差、大色差、照明體 A 色差**三組資料上 **相等或更好** |
| 額外 | **CAM16-UCS 的色差可再用「歐氏色差的冪次修正」進一步改善** |

**驗證用資料集**：**對應色資料集** + **LUTCHI 色貌資料集**（← 又是羅明 1991 年的那套資料）

---

# 二、Moroney et al. (2002) — CIECAM02

## 2-1 作者與單位
> **Nathan Moroney（HP Labs, Palo Alto）、Mark D. Fairchild（Munsell Color Science Lab, RIT）、
> Robert W. G. Hunt（Color Consultant, Salisbury, England）、Changjun Li（CII, Derby）、
> M. Ronnier Luo（CII, Derby）、Todd Newman（Canon Development Americas）**

- 提出單位：**CIE TC 8-01 "Color appearance models for color management applications"** ✅ 與筆記一致
- 註：**Luo 與 Li 當時都在 Derby 的 Colour & Imaging Institute** —— 呼應老師的職涯（L16）

## 2-2 ★★ CIECAM97s → CIECAM02 的「結構性」改變（課堂沒講的部分）
論文摘要列的修訂清單：
1. **★ 線性的色適應變換（a linear chromatic adaptation transform）**
   → **也就是說 CIECAM97s 的 CAT 是「非線性」的，CIECAM02 把它改成線性**
2. **新的非線性反應壓縮函數**（non-linear response compression function）
3. **修改各感知屬性相關量的計算式**
4. **若干簡化**

> **★ 這與課堂互補**：
> **老師講的是「經驗上的三個缺陷」**（黑的 J≠0、近中性色 C≠0、亮度變時 s 不該變卻變了）——**現象**；
> **論文講的是「結構上改了什麼」**（CAT 線性化、新壓縮函數）——**手段**。
> **兩者合起來才是完整的故事。**

## 2-3 設計時的取捨（值得記的工程觀點）
> **"There were many, often conflicting, considerations such as compatibility with CIECAM97s,
> prediction performance, computational complexity, invertibility and other factors."**

**四個彼此衝突的目標：向下相容、預測效能、計算複雜度、★ 可逆性（invertibility）。**
> **可逆性之所以重要**：跨媒體工作流程要「正向 → 色域映射 → 反向」（見 L17 §12），
> **模型若不可逆，整條工作流程就不成立。**

---

# 三、Zhu & Luo (2022, CIC30) — 用真實場景檢驗 CIECAM16

**這是羅明本人在 CIECAM16 標準化之後、針對它的限制所做的檢驗。**

## 3-1 背景（確認 E1）
> **"Recently, International Commission on Illumination (CIE) recommended CIECAM16 to become a common model."**
→ **由羅明本人的論文確認 CIECAM16 已是 CIE 推薦的通用模型。**

## 3-2 實驗設計（可直接對照 L10 的實驗設計參數表）
| 參數 | 設定 |
|---|---|
| **方法** | **閾值法（threshold method）** ← L10 §2 |
| **真實場景（3 類）** | **畫作、蔬果、膚色色卡** ← 全部是**記憶色**（L16） |
| **適應條件（16 組）** | **4 種 CCT：3000 / 4500 / 6500 / 8000 K**<br>**× 4 種照度：10 / 100 / 500 / 1000 lux** |
| **顯示器** | **4 種不同尺寸** |
| **★ 光源設備** | **Thouslite LEDcube，11 通道可調 LED** |

> **★★ 這台設備正是老師在 L06（`08-24-29.mp4` 01:01:56）講的那台**：
> 「現在做研究我們大量使用可調式 LED 系統，一個箱子裡有 11–12 顆 LED，
> 可以精確重現各種標準照明體。」
> **論文補上的優點**：**切換照明體時不需暖機、且能維持相同的照明體特性。**

## 3-3 ★★★ 三個結論（這是 CIECAM16 目前已知的限制）
1. **真實場景與顯示器影像的色貌「確實不同」，
   ★ 尤其在「低 CCT」與「低亮度」下差異最大**
2. **場景內容與顯示器尺寸「沒有顯著影響」** ← 有點反直覺，但這是實驗結果
3. **★ CIECAM16 在「亮度（luminance）」的預測上有很大的偏差，
   需要修正，尤其是「低 CCT + 低亮度」的情況**
   → 他們提出了一個修正式，準確度高

> **★ 對筆記的影響**：
> L17 出入第 7 點我寫「CIECAM02/CAM16 在 HDR、極低亮度、高彩度 LED 下未經充分驗證」——
> **這篇論文證實了其中的「低亮度」那一半，而且是羅明自己做的。**

## 3-4 論文引用的相關發現（都與課程 L17 的 surround 參數直接相關）
| 研究 | 發現 |
|---|---|
| **Xu et al.** | 比對**真實照明場景**與其在螢幕上的重現時，**`dim` 與 `dark` surround 表現相似，且都優於 `average`** |
| **Lu et al.** | 用記憶匹配 + 成對比較比較燈箱印刷樣與螢幕，**`dim` 參數在三種條件下都表現良好**；`dark` 與 `average` 的表現則**取決於顏色的明度與彩度** |
| **Huang et al.** | **觀看照度越高，螢幕上匹配色的飽和度越高** ← 這是 **Hunt effect** 在跨媒體上的直接體現（L17 §11③） |

> **★ 實務結論：做跨媒體色彩複製時，surround 參數選 `dim` 通常比 `average` 好。**
> 這一點課堂上沒講（老師只解釋了三種 surround 的定義），但對實作非常關鍵。

---

# 四、本次蒸餾對既有筆記的修正清單

| # | 位置 | 修正內容 | 已套用 |
|---|---|---|---|
| P1 | **L17 §3 / D22 / E3** | CAM16 失效機制改為精確版：**負值出現在無彩訊號 A，崩潰發生在 J 的非整數次方，導致計算中斷** | ✅ |
| P2 | **L17 §3** | 補上**「只換矩陣（M_HPE / M_OPT）的修法全部失敗，因為犧牲了預測精度」** | ✅ |
| P3 | **L17 §3** | 補上 **M16 的三個設計約束**與「不可能崩潰」的推論鏈 | ✅ |
| P4 | **L17 §3** | 效能結論精確化：**CAM16 在 colourfulness 與 hue composition 上優於 CIECAM02**；**CAT16 滿足 nesting rule 而 CAT02 不滿足** | ✅ |
| P5 | **L17 §9** | 補上 **CIECAM97s → CIECAM02 的結構性改變（CAT 線性化、新壓縮函數）**，與老師講的三個經驗缺陷互補 | ✅ |
| P6 | **L17 §12** | 補上 **invertibility（可逆性）是 CIECAM02 的設計目標之一**，這是跨媒體工作流程的前提 | ✅ |
| P7 | **L06** | 補上 **Thouslite LEDcube 11 通道**，並註明「切換照明體不需暖機」 | ✅ |
| P8 | **L17 出入#7** | **CIECAM16 在低 CCT + 低亮度下的亮度預測有大偏差**（Zhu & Luo 2022 實測） | ✅ |
| P9 | **L17 §5** | 補上 **surround 選 `dim` 在跨媒體比對上通常優於 `average`**（Xu / Lu 的結果） | ✅ |
| P10 | **E2** | 作者名單由原始論文全文確認 | ✅ |
