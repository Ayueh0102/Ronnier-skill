# 待驗證清單 / Open Questions

> **這份筆記整理過程中，有幾個地方查不到確定答案，一律標成「存疑」而不是猜一個寫上去。**
> 這裡把它們集中列出。**如果你手上有原始文獻可以確認任何一項，非常歡迎開 issue 或 PR。**
>
> During compilation, a handful of details could not be confirmed. Rather than guess,
> they were marked as uncertain in place. They are collected here.
> **If you have access to the primary sources and can settle any of these, please open an issue or PR.**

---

## 🔴 會影響實作的（優先度高）

### Q1. CIEDE2000「三項式改寫」的旋轉符號
**位置**：`references/L14_色差進階_參數效應_CAM02UCS_影像色差.md` §4

課程教材給的改寫式是：
```
ΔC'' = ΔC'·cos(φ) + ΔH'·sin(φ)
ΔH'' = ΔH'·cos(φ) + ΔC'·sin(φ)      ← 兩式都是加號
```
但標準的二維旋轉矩陣應為 `[[cos, sin], [−sin, cos]]`，
也就是第二式應該是 **`ΔH'' = ΔH'·cos(φ) − ΔC'·sin(φ)`（減號）**。

**兩種可能**：
1. 教材排版時掉了負號
2. 這是刻意搭配 `S''_C` / `S''_H` 的縮放設計，並非標準正交旋轉

**要什麼才能確認**：CIEDE2000 三項式改寫的原始論文。
**目前的處理**：筆記中標明存疑；**四項式（標準版）不受影響，可照常使用**。

---

### Q2. S-CIELAB 色度 CSF 的 `b₁` 係數
**位置**：`references/L14_...md` §9-4b

黃藍通道（Blue-Yellow）的參數表印的是 **`b₁ = 0.0000`**。

代進 `CSF_chrom(f) = a₁·e^(b₁·f^c₁) + a₂·e^(b₂·f^c₂)` 之後，
第一項會變成**常數 7.0328，永不衰減** —— 數學上不合理。

**推測**：是一個很小的負數被四捨五入成 0（例如 −0.00004）。

**影響**：該項只佔 DC 值的約 15%（7.03 / 47.72），對整體形狀影響有限，
但**要精確實作 S-CIELAB 的話需要正確值**。

**要什麼才能確認**：S-CIELAB 空間濾波器的原始論文（Zhang & Wandell）。

---

## 🟡 只影響考據（優先度低）

### Q3. `FCM (1978)` 是什麼？
**位置**：`references/L13_色差公式_從CIELAB到CIEDE2000.md` §2 家族二

教材列的 MacAdam 系公式是：
```
Simon-Goodwin graphic chart (1958)
FMC-I  (1967)
FMC-II (1971)
FCM    (1978)     ← 字母順序與前兩項不一致
```

`FMC = Friele–MacAdam–Chickering`（教材圖說原文），前兩版文獻明確。
**第四項的 `FCM` 極可能是 `FMC` 打字顛倒**，但 1978 年是否真有第三版，查不到明確文獻。

**目前的處理**：答題只寫 FMC-1 (1967) 與 FMC-2 (1971)。

---

### Q4. Ostwald 1915 年那本書的正確書名
**位置**：`references/L12_色序系統_Ostwald_DIN_OSA_Coloroid.md` §1-5

教材印的是 **`1915 Die Farbelechre (The Color Primer)`**。

- 英文標題 *The Color Primer* 一般對應 Ostwald 的 ***Die Farbenfibel***（1916/17）
- ***Die Farbenlehre***（1918–23）是另一套較大部頭的著作
- 年份 1915 也比通行說法早約一年

**目前的處理**：筆記只記「Ostwald 的起點著作是 1915 年前後的色彩入門書」，不背拼字。

---

### Q5. NCS 是哪些國家的國家標準？
**位置**：`references/L11_色序系統_Munsell與NCS.md` 文末勘誤第 2 條

- **教材寫**：`Standard in Sweden, Noway and Portugal`
- **一般文獻與 NCS 官方資料**：瑞典（SS）、挪威（NS）、**西班牙**（UNE 48-103）

**這不是老師口誤 —— 教材上就是這樣印的**（`Noway` 也是錯字）。
但「葡萄牙」查不到佐證。

**目前的處理**：**考試寫 Portugal（依教材），論文寫 Spain 並註明來源。**

---

## ✅ 已經解決、留作紀錄的

這幾項曾被列為存疑，後來找到證據結案：

| 項目 | 原本的疑問 | 怎麼解決的 |
|---|---|---|
| **Munsell 五次多項式的正負號** | 某一節印 `+0.021009V⁴`，另一節印 `−` | **同一份教材另一處印對了**；且驗算 `V=10 → Y=102.57`（正號版得 522.75）✅ |
| **DIN Darkness 常數 6.1273 / 6.1723** | 哪一個對？ | 用「最佳色的 D 必須 = 0」驗算：`10 / log₁₀(41.7) = 6.17232` ✅ |
| **CIELUV 線性段係數 903.0 / 903.3** | 差異很小，哪個對？ | `κ·ε = (24389/27)(216/24389) = 8` 恰好整數，只有 903.2963 成立 ✅ |
| **「Ostwald 是瑞士標準」** | 聽起來像口誤（他是德國人） | 教材的 Ostwald 沿革最後一列寫著 `1960 Swiss Color Atlas 2541` —— 指的是那本圖冊 ✅ |
| **MacAdam 的觀察者叫什麼** | 曾被記成 "Peter Lutin" | 教材圖說寫 `One observer (PGN)` = **Perley G. Nutting Jr.** ✅ |

**★ 這幾個的共通解法很值得學**：
**能用邊界條件驗算的，就不要用「我記得好像是」來判斷。**
教材印錯不奇怪，但**一條公式對不對，通常有一個定義層次的約束可以檢查**。

---

## 怎麼幫忙

如果你能確認任何一項：

1. 開 issue，標題寫 `[Q1] …` 之類的編號
2. **附上出處**（論文、標準編號、頁碼）
3. 如果直接發 PR，記得同時更新：
   - 對應的 `references/L##_….md`（正文）
   - `references/00-differences.md`（若屬於 F 類：教材印刷錯誤）
   - 本檔案（把該項移到「已解決」）

分類慣例請見 [`CONTRIBUTING.md`](CONTRIBUTING.md)。
