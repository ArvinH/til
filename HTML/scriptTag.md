## defer, async in script tag
`<script src="demo.js" ></script>`
整個網頁的繪製會停下，等 demo.js 下載完並執行完，網頁繪製才繼續。

`<script src="demo.js" defer ></script>`
網頁繪製不會停下， demo.js 在背景下載，待 DOMContentLoaded 再執行 demo.js 。

`<script src="demo.js" async ></script>`
網頁繪製不會停下， demo.js 在背景下載。

待 demo.js 下載完畢，網頁繪製停下，執行 demo.js 。

待 demo.js 執行完畢，網頁繪製繼續。
