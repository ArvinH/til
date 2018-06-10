## Aren't promises just callbacks ?
http://stackoverflow.com/questions/22539815/arent-promises-just-callbacks

Promise:
`new Promise( /* executor */ function(resolve, reject) { ... } );`
> executor
> 為一個依序接收兩個參數的函式：resolve 及 reject（實現及拒絕回呼函式）。在 Promise 實作中，executor 函式在傳入參數 resolve 與 reject 後會立刻執行（executor 函式會在 Promise 建構式回傳 Promise 物件前被執行）。resolve 與 reject 函式，會在被個別呼叫時，個別執行之。通常 executor 函式會發起一些非同步操作。接著，成功完成後執行 resolve 以完成 promise；或如果有錯誤，執行 rejects。
> 如果 executor 函式在執行中拋出錯誤，promise 會被拒絕（rejected），回傳值也將被忽略。
> https://developer.mozilla.org/zh-TW/docs/Web/JavaScript/Reference/Global_Objects/Promise

如何實作 Promise:
http://opass.logdown.com/posts/296834-javascript-promise-for-see-notes

doResolve 與 .then 的實作很精彩, 要多看幾次。
