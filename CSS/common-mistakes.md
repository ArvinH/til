## Common CSS Mistakes (And How To Fix Them)

1. 作者推薦使用無單位的 line-height，ex: line-height: 1.5
2. 利用 em 或 rem 而非使用 px 作為單位
3. 避免使用 !important
4. 避免無用的註解，這些註解可能年久沒有人維護，有需要刪除修改的 code 不應該用註解，因為有版本控制可以解決這件事情
5. CSS 檔案並非切開成多檔就是好的，加上新屬性的時候加在檔案尾端會有 CSS 規則覆寫的可能
6. id 請在 HTML 使用，如果一定要在 CSS 裡面寫 id，作者利用一個巧妙的方式讓 id 變成 class 的權重：
[id="YourID"] {
// your rules
}
7. 盡量避免利用 element (a, li, ul 等) 當做 css selector
8. CSS 可以拆成模組，並非利用覆寫的方式做到修改樣式

原文：
https://blog.mariano.io/common-css-mistakes-and-how-to-fix-them-8ee0f5e88d64#.reqsd5i95
