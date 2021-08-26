If you want to pass a function to requestAnimationFrame with a `this` keyword, you'll need to bind the correct context first:

webkitRequestAnimationFrame will presumably call the function you pass in, something like this:

```js
function webkitRequestAnimationFrame(callback)
{
    // stuff...
    callback();
    // other stuff...
}
```

At this point, you have dissociated (detached) the draw function from its invocation context. You need to bind the function (draw) to its context (the instance of Display).

You can use Function.bind, but this requires JavaScript 1.8 support (or just use the recommended patch).

```
Display.prototype.draw = function()
{
    // snip...

    window.webkitRequestAnimationFrame(this.draw.bind(this));
};`
```

reference: https://stackoverflow.com/questions/6065169/requestanimationframe-with-this-keyword

