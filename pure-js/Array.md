## find max in array

```js
function getMaxOfArray(numArray) {
      return Math.max.apply(null, numArray);
}

or

var arr = [1, 2, 3];
var max = Math.max(...arr);

or

const maxStat = statsArray.reduce((a, b) => Math.max(a.count, b.count));
```

source: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math/max


## Array fill

if you want to create an array will value filled

```js
Array(n).fill('x')

// ['x', 'x',...,] (n 'x')
```

However...if you try to initialize a nested array, for example

```js
Array(n).fill([])

// [[], [], []...[]] (n [])
```

All array nested in the created array will refer to the **same** one!

```js

const a = Array(5).fill([]);
a[3].push('a');

// [['a'], ['a'], ['a'], ,,,['a']]
```

