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

### caveat

Do not replace `process.env` with `JSON.stringify(env)` directly (env is env object parsed by dotenv, etc)

If we wrap whole object with JSON.stringify,
webpack replaces `process.env.ENV` with `{"BROWSER":true,"ENV":"local",...}.ENV`. It will increase the bundle size.

Note: If TerserPlugin is enabled, it's okay to set the env variables as `JSON.stringify(env)`
because the plugin resolves `{ ENV_VAR_NAME: 'value', ... }.ENV_VAR_NAME` properly, but still not recommended.
