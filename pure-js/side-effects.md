## side effects

source:
https://davidwalsh.name/preventing-sideeffects-javascript

```js
var myArray = [1, 2, 3];

for(var x=0, length = myArray.length; x < length; x++) {
   // ...
}
// "x" and "length" are side effects
```

```js
[1, 2, 3].forEach(function(item, index, array) {
        // No side effects! :)
});
```
