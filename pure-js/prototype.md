### __proto__ VS. prototype in JavaScript

__proto__ is the actual object that is used in the lookup chain to resolve methods, etc. prototype is the object that is used to build __proto__ when you create an object with new:

```js
( new Foo ).__proto__ === Foo.prototype
( new Foo ).prototype === undefined
```
