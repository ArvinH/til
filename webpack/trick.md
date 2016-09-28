### some tricks

Should use `JSON.stringify('production')` to wrap string in prod config

webpack.production.config.js

```js
new webpack.DefinePlugin({
  'process.env':{
    'NODE_ENV': JSON.stringify('production'),
    'API_URL': JSON.stringify('http://localhost:8080/bands')
  }
}),
```
