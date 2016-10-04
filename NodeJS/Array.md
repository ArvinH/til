## Matrix transposing
```js
let newArray = array[0].map((col, i) => { 
  return array.map(row => row[i]);
});
```

or use lodash _zip function
