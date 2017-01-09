### precedence

weird part:

```js
3 < 2 < 1 // return true
```

because:

```js
3 < 2 < 1 
// will translate to ...
( 3 < 2 ) < 1
// which means ...
false < 1
// then ...
0 < 1
// so it will return true
```

