# tail call optimization in js
ref: https://flyyang.github.io/2017/07/24/JavaScript-%E4%B8%AD%E7%9A%84%E5%B0%BE%E8%B0%83%E7%94%A8%E4%BC%98%E5%8C%96%EF%BC%88tail-call-optimization%EF%BC%89/

#自幹 JavaScript 的 Tail Call Optimization:
ref: http://fred-zone.blogspot.com/2017/04/javascript-tail-call-optimization.html

```js
const tco = (fn) => {

    return (...args) => {

        let f = fn.bind(this, ...args);

        // 每次執行函數後，若得到的回傳值是函數物件，則繼續執行下去
        while(f instanceof Function) {
            f = f();
        }

        // 沒有需要繼續執行的函數，回傳結果
        return f;
    }
};
```

```js
const func = (x) => {

    // 讓他跑 10000000 次
    if (x === 10000000)
        return x;

    // 不直接執行函數，改為綁定參數後產生並回傳一個函數物件
    return func.bind(this, x + 1);
};

// 包裝我們的遞迴函數
const improvedFunc = tco(func);

// 執行方法和舊函數一樣
let ret = improvedFunc(0);
```

執行優化後的函數，就不會再出現 stack size 的錯誤。

