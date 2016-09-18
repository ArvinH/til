Different between module.exports vs exports:

<!-- Even question is answered and accepted long ago, just want to share my 2 cents: -->

You can imagine that at very begining of your file there is something like (just for explanation):

var module = new Module(...);

var exports = module.exports;

which means:

exports -> {} <- module.exports

that's why you use exports.a = fn, exports.b = fn

-> {a: fn, b:fn}

ex.
in test.js

`exports.a = function a() {};`

when you require this object,

`var object = require('test');`

you will get `object.a()`

---

if you use module.exports,

ex.

in test2.js

module.exports = function a() {};

when you require this object,

`var object = require('test');`

you will get `object()` (since you overwrite {} )


### why can't `exports = function a() {}` ?

remember this?

var module = new Module(...);

var exports = module.exports;

when you do `exports = function a() {}`, exports no longer point to module.exports, and you can't get it on other files

`exports` is only a local variable. (not like `module` which is `Module` 's instance)

