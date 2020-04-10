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

### Map:

How to serialize a map in JS?

src: https://stackoverflow.com/questions/50153172/how-to-serialize-a-map-in-javascript

I guess the whole point of Maps/Dictionaries is that you can use objects as keys in them, so:

let a = {}, b = {}, m = new Map();

m.set(a,b);
m.get(a); // b
So you get b since you have a reference on a. Let's say you serialize the Map by creating an Array of arrays, and stringify that to json:

function serialize (map) {
  return JSON.stringify([...map.entries()])
}

let s = serialize(m); // '[[{}, {}]]'
                      // '[[<key>, <val>], … ]'
Than you could:

let m2 = JSON.parse(s).reduce((m, [key, val])=> m.set(key, val) , new Map());
But the question now is: How to get a certain key? Since there does not exist any reference, due to the fact that all objects have been stringified and recreated, it is not possible to query a dedicated key.

So all that would only work for String keys, but that really takes most of power of maps, or in other words, reduces them to simple objects, what is the reason maps were implemented.
