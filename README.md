# 基隆天氣會受協和發電廠影響嗎
<!-- Badges 來源參考：https://github.com/Envoy-VC/awesome-badges#github-stats -->

![](https://img.shields.io/badge/Domain-Climate%20Data%20Analysis-blue)
![](https://img.shields.io/badge/Method-EOF%20(PCA)-orange)
![](https://img.shields.io/badge/Tool-MATLAB-yellow)
![](https://img.shields.io/badge/Status-Research%20Project-success)

> 本專案為長期氣象數據分析研究專案，聚焦於協和發電廠營運前後對基隆地區氣候變化之潛在影響，並建立可延伸至 AI 氣候建模的資料分析流程。

本專案以 1947–2022 年基隆測站長期氣象資料為基礎，透過 MATLAB 進行時間序列分析、季節性統計與 EOF（Empirical Orthogonal Function）降維分析，探討協和發電廠營運前後對區域氣候指標之潛在影響，並作為後續導入 AI 氣候分析與預測模型的資料分析基礎。

本研究成果可延伸導入 AI 進行氣候趨勢預測、氣候型態分類與異常氣候偵測，例如結合 EOF 特徵與深度學習模型，建立長期氣候變化的預測與判別模型。

本專案屬於 數據分析（Data Analysis）與氣候資料分析（Climate Data Analysis），可作為後續 AI 氣候分析與預測研究的基礎專案。

---

## 功能

- [x] 70+ 年長期氣象資料前處理與整理
- [x] 長期時間序列趨勢分析
- [x] 季節性統計與風向玫瑰圖視覺化
- [x] 依發電廠營運階段進行前後比較分析
- [x] EOF（PCA）多變量降維分析
- [ ] AI 氣候趨勢預測（規劃中）
- [ ] 氣候型態分類與異常偵測（規劃中）

---

## 使用資料（1947–2022 長期氣象資料）

本研究使用中央氣象局基隆測站 1947–2022 年長期氣象資料，包含降雨量、降雨時數、降雨日數、風速、風向與日照時數等變數，作為長期趨勢與結構變化分析之基礎。

| 類型 | 指標 |
| ---- | ---- |
| 降水 | 降雨量、降雨時數、降雨日數 |
| 風場 | 風向、風速 |
| 日照 | 日照時數 |

---

## 分析設計（時間切割）

以「發電廠營運階段」作為準實驗對照設計，透過長期氣象資料的時間切割，比較不同營運狀態下區域氣候指標之變化趨勢，作為評估人為設施對局部氣候潛在影響的分析基礎。

- 發電廠營運前
- 發電廠營運中
- 機組除役（1、2 號機組）

---

## 方法與流程（Methodology）

### 長期時間序列分析

針對 1947–2022 年長期氣象資料進行時間序列分析，觀察降雨量、風速與日照時數等指標在不同年代的變化趨勢與長期波動特性。
此分析作為整體氣候變化背景的參考基準，用以區分自然氣候長期變動與可能的人為影響訊號，避免將原本的長期氣候趨勢誤判為發電廠營運所造成的變化。

<img width="574" height="444" alt="螢幕擷取畫面 2026-02-26 160058" src="https://github.com/user-attachments/assets/9843d710-c5f5-4625-a938-05d0b32917b3" />


---

### 季節性統計與風向玫瑰圖分析

針對春、夏、秋、冬進行季節性統計，並以風向玫瑰圖呈現不同季節風向與風速的分布型態。
透過比較不同營運階段的季節風場結構，可評估是否存在局部風場型態的長期偏移現象，並避免單一年份極端氣候事件對整體判斷造成干擾。

<img width="621" height="593" alt="螢幕擷取畫面 2026-02-26 155934" src="https://github.com/user-attachments/assets/d40cf976-f633-4ef2-864d-d073100c7e0b" />


---

### 營運階段前後比較分析

依據協和發電廠營運狀態將資料切分為營運前、營運中與機組除役後三個階段，比較各階段氣象指標之平均值、變動幅度與長期趨勢差異。
此方法有助於辨識氣候型態是否在營運階段出現系統性變化，作為評估發電廠對區域氣候潛在影響的初步證據基礎。

<img width="539" height="417" alt="螢幕擷取畫面 2026-02-26 160155" src="https://github.com/user-attachments/assets/50ade7bd-cbc0-4e19-90f1-32d8ff351baf" />

---

### EOF（Empirical Orthogonal Function）降維分析

透過 EOF 分析將多變量氣候資料進行降維，萃取主導氣候變異的主要模態（Principal Modes），並比較不同營運階段主成分結構與時間變化是否出現顯著差異。
此方法可用於辨識氣候系統中是否存在結構性改變，而非僅限於單一氣象指標的變動，提升對整體氣候型態變遷的解釋能力。


---

## 使用工具（Tools）

- MATLAB
- 中央氣象局氣象資料

---

## 如何重現本研究結果（Reproducibility）

1. 將原始氣象資料放入 data/raw/
2. 執行 code/matlab/ 內分析腳本
3. 產生圖表將輸出至 results/plots/
4. README 使用之圖片存放於 figures/

---

## 專案結構（Repository Structure）

Hsieh-ho-Power-Plant_Keelung_Climate_Analysis/
├─ README.md
├─ data/
│  ├─ raw/
│  └─ processed/
├─ code/
│  └─ matlab/
├─ figures/
├─ results/
│  └─ plots/
└─ docs/

---

## 未來延伸（Future Work with AI）

本研究以單一測站（基隆測站）之長期氣象資料作為分析基礎，雖可反映區域氣候的長期變化趨勢，但仍可能受到大尺度氣候變異（如季風系統、ENSO、颱風頻率變化）之影響，難以完全區分自然氣候變動與人為設施營運所造成的影響。此外，本研究主要採用統計分析與 EOF 降維方法進行探索性分析，尚未建立具備因果推論能力之模型，相關結果應解讀為「潛在關聯性」而非嚴格因果關係。


未來可從以下方向進一步深化研究：
- AI 時間序列預測（LSTM / Transformer）
- 氣候型態分類（Random Forest / XGBoost / MLP）
- EOF + 深度學習混合模型
- 異常氣候型態偵測（AutoEncoder / Isolation Forest）

---

## 聯絡作者

GitHub: https://github.com/RaymondYang
Email: Ss0961640@gmail.com

