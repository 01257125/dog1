# 🐕 SwiftUI Shiba Inu (柴犬迷因形狀繪製)

這是一個使用 SwiftUI 原生形狀 (Shapes) 繪製的「持劍與盾的柴犬」迷因角色專案。
本專案完全不使用任何外部圖片素材，100% 透過純程式碼的幾何圖形堆疊與排版組合而成。
## 🛠️ 使用的技術與形狀 (Shapes)
本專案大量使用了 SwiftUI 的視圖修飾器（如 `.offset`、`.rotationEffect`、`.trim`）以及多種原生幾何形狀：

*   **`ZStack`**: 專案的排版核心，用來將背景、陰影、角色本體與裝備由下往上逐層堆疊。
*   **`Circle` (圓形)**: 
    *   柴犬的大頭底圖。
    *   搭配 `.trim(from: 0.0, to: 0.5)` 裁切出一半的圓形，作為白色的嘴邊肉。
    *   五官（眼睛、鼻子）、雙手，以及盾牌的紅底與黃色中心點。
    *   搭配 `.stroke(lineWidth: 15)` 製作出空心的盾牌灰色外框。
*   **`Ellipse` (橢圓形)**: 繪製柴犬腳下具有透明度 (`.opacity`) 的底部陰影，增加立體感。
*   **`UnevenRoundedRectangle` (不對稱圓角矩形)**: 繪製柴犬的左右耳朵，透過設定頂部圓角與底部直角，呈現出耳朵的尖銳感。
*   **`Capsule` (膠囊形)**: 繪製右手武器的劍柄。
*   **`Rectangle` (矩形)**: 繪製細長的灰色劍刃。
*   **`RoundedRectangle` (圓角矩形)**: 繪製黃色的劍格（護手），使邊角平滑。

## 🖍️ 顏色配置
*   使用了 Assets 中自訂的 `backgroundcolor` 作為全螢幕背景。
*   使用了 Assets 中自訂的 `shibacolor` 作為柴犬的主要橘色毛髮。
*   原生顏色：`.white`, `.black`, `.brown`, `.gray`, `.yellow`, `.red`。

## 💻 執行環境
*   開發工具：Xcode / Swift Playgrounds
*   框架：SwiftUI

## 📝 開發備註
這是我在學習 SwiftUI 排版與繪圖的練習作業。透過調整各個形狀的 `width`、`height` 以及 `X/Y offset`，可以精確地在畫面上拼湊出複雜的卡通圖像。
