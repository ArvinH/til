## How to detect object is Array or not in JS

Source:
http://stackoverflow.com/questions/1058427/how-to-detect-if-a-variable-is-an-array

1. `obj instanceof Array`
This won't work if the object is passed across frame boundaries as each frame has its own Array object.

2. `Object.prototype.toString.call(obj) === '[object Array]'`

Both methods will only work for actual arrays and not array-like objects like the arguments object or node lists.


## robust checks for JS arrays:

Here's the code for robust checks for JS arrays:

```js
function isArray(obj) {
    return Object.prototype.toString.call(obj) === '[object Array]';
}
```

and iterable (ie non-empty) array-like objects:

```js
function isNonEmptyArrayLike(obj) {
    try { // don't bother with `typeof` - just access `length` and `catch`
        return obj.length > 0 && '0' in Object(obj);
    }
    catch(e) {
        return false;
    }
}
```

