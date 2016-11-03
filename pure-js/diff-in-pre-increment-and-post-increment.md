## ++i vs i++ in JS

i++ 與 ++i 在某些情況會有執行上的差異, 各語言狀況不同, 以 JS 來說：

j = i++, 會先處理 j = i, 才接著進行 i++
故 j = i++ 並不會讓 j 等於 i + 1 的值
j = ++i 則會。


這篇解釋得蠻清楚：
copy from https://zerotowhole.blogspot.tw/2016/11/pro-i-i.html
```js
var a = 10;

a = a++;

console.log("a = " + a);//output = 10

console.log("-------------");

var b = 10;

b = ++b;

console.log("b = " + b);//output = 11

console.log("-------------");

var c = 10

c = c+1;

console.log("c = " + c);//output = 11

console.log("-------------");

var d = 10;

d += 1;

console.log("d = " + d);//output = 11

console.log("-------------");

var e = 10;
var x = 0;

x = e++;

console.log("x = " + x);//output = 10
console.log("e = " + e);//output = 11

console.log("-------------");

var f = 10;
var y = 0;

y = ++f;

console.log("y = " + y);//output = 11
console.log("f = " + f);//output = 11

console.log("-------------");

var g = 0;

console.log(g++);//output = 0

console.log("-------------");

var h = 0;

console.log(++h);//output = 1
```
