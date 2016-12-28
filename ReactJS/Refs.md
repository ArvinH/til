## How to get the DOM node of a child ?

```js
// Parent Component
onChildLoad(element) {
    // do stuff here
},
render() {
    return (
        <Child onChildLoad={loadedChild}>
        // ...
        </Child>
    );
}

// Child Component
render() {
    return (
        <div ref={this.props.onChildLoad}></div>
    );
}
```

also, you can pass callback from context

