## destructing assignment

### default values

example
```js
this.props = {
	foo: 'aaa',
	bar: 'ccc'
};

let {
	foo,
  bar,
  yy = []
} = this.props;
// result => foo: 'aaa', bar: 'ccc', yy: []
```

### Symbols:
usage:
http://exploringjs.com/es6/ch_symbols.html

