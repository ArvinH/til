# Node.js的__dirname，__filename，process.cwd()，./的一些坑 
source: https://github.com/jawil/blog/issues/18

## summary:
__dirname： 獲得當前執行文件所在目錄的完整目錄名稱
__filename： 獲得當前執行文件所帶有的完整絕對路徑文件名
process.cwd()：獲得當前執行node命令時候的文件夾目錄名
./： 不使用require 時候，./與 process.cwd() 一樣，使用require 時候，與 __dirname 一樣
只有在 require() 時才使用相對路徑的寫法，其他地方一律使用絕對路徑，如下：

// 當前目錄下
 path.dirname(__filename) + '/path.js';
// 相鄰目錄下 
 path.resolve(__dirname, '../regx/regx.js');
 
### example:

folder structure:

```
syntax/
    -nodejs/
        -1.findLargest.js
        -2.path.js
        -3.fs.js
    -regs
        -regx.js
        -test.txt
```

code:

```js
const path = require('path')
console.log('__dirname：', __dirname)
console.log('__filename：', __filename)
console.log('process.cwd()：', process.cwd())
console.log('./：', path.resolve('./'))
```

result:

```
__dirname：     /Users/jawil/Desktop/nodejs/demo/ES6-lottery/syntax/nodejs
__filename：    /Users/jawil/Desktop/nodejs/demo/ES6-lottery/syntax/nodejs/2.path.js
process.cwd()： /Users/jawil/Desktop/nodejs/demo/ES6-lottery/syntax/nodejs
./：            /Users/jawil/Desktop/nodejs/demo/ES6-lottery/syntax/nodejs
```
