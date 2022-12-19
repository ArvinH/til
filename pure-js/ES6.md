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

--- 
Update at 2022/12/19

[How do you JSON.stringify an ES6 Map?](https://stackoverflow.com/questions/29085197/how-do-you-json-stringify-an-es6-map)


Both JSON.stringify and JSON.parse support a second argument. replacer and reviver respectively. With replacer and reviver below it's possible to add support for native Map object, including deeply nested values

```js
function replacer(key, value) {
  if(value instanceof Map) {
    return {
      dataType: 'Map',
      value: Array.from(value.entries()), // or with spread: value: [...value]
    };
  } else {
    return value;
  }
}
function reviver(key, value) {
  if(typeof value === 'object' && value !== null) {
    if (value.dataType === 'Map') {
      return new Map(value.value);
    }
  }
  return value;
}
```

Usage:

```js
const originalValue = new Map([['a', 1]]);
const str = JSON.stringify(originalValue, replacer);
const newValue = JSON.parse(str, reviver);
console.log(originalValue, newValue);
Deep nesting with combination of Arrays, Objects and Maps

const originalValue = [
  new Map([['a', {
    b: {
      c: new Map([['d', 'text']])
    }
  }]])
];
const str = JSON.stringify(originalValue, replacer);
const newValue = JSON.parse(str, reviver);
console.log(originalValue, newValue);
```

