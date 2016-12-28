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
