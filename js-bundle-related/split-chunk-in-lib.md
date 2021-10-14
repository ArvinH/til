# Tips for splitting chunks in lib

You can generate multiple entry chunks for prod and dev, for example, on prod, we minify js, on dev we don't
so we can have `.min.js` for prod and `.dev.js` for dev.

but if you are building a lib for other project to use, it'd be great if you can let library consumer only import one entry file,
and in that entry file, it depends on env to decide which entry chunk they want to use (`.min.js` or `.dev.js`)

some example here, in this rollup.config.js, we have three entry chunk, and we return an array of configs(4 configs, so rollup will build four times)

first two times, we generate `.min.j` and `.dev.js`

thrid time we use `entryJs rollup plugin` to create entry files to each entry chunk, so it can based on env to load correct chunk, i.e. in prod, load `.min.js`, in dev, load `.dev.js`.

fourth time it emit type definition files.


### rollup.config.js

```js
import { ModuleFormat, RollupOptions } from 'rollup';
import { nodeResolve } from '@rollup/plugin-node-resolve';
import commonjs from '@rollup/plugin-commonjs';
import replace from '@rollup/plugin-replace';
import babel from './plugins/babel';
import brazeSdkTransform from './plugins/brazeSdkTransform';
import dts from './plugins/dts';
import terser from './plugins/terser';
import { extensions } from './constants';
import { getChunkName } from './utils';
import entryJs from './plugins/entryJs';

interface IOConfig {
  ext: string;
  format: ModuleFormat;
}

const ioOptions = ({ ext, format }: IOConfig): RollupOptions => ({
  input: {
    core: 'src/core/index.ts',
    'react-core': 'src/react-core/index.ts',
    'react-ui': 'src/react-ui/index.ts',
  },
  output: {
    format,
    dir: 'dist',
    entryFileNames: `[name]${ext}`,
    chunkFileNames: `[name]-shared${ext}`,
    manualChunks(id) {
      return getChunkName(id);
    },
    /*
    we have three entry chunks, and manualChunks would make sure all code under src/core will be put into core.js, all code under src/react-core will be put into react-core.js, etc
    Therefore even in react-ui we import @/core/xx, the entry chunk of react-ui.js won't contain any code of core.js
    */
  },
});

const jsBundle = (target: 'min' | 'dev'): RollupOptions => ({
  ...ioOptions({ ext: `.${target}.js`, format: 'es' }),
  plugins: [
    ...(target === 'min' ? [terser()] : []),
    nodeResolve({
      extensions,
      resolveOnly: ['@braze/web-sdk'],
    }),
    babel({ target }),
    commonjs(),
    brazeSdkTransform(),
    replace({
      preventAssignment: true,
      values:
        target === 'min'
          ? { 'process.env.NODE_ENV': JSON.stringify('production') }
          : { 'process.env.NODE_ENV': JSON.stringify('development') },
    }),
  ],
  // https://rollupjs.org/guide/en/#onwarn
  onwarn: (warning, defaultHandler) => {
    if (warning.code === 'EVAL') return;
    defaultHandler(warning);
  },
});

const config: RollupOptions[] = [
  jsBundle('dev'),
  jsBundle('min'),
  {
    ...ioOptions({ ext: '.js', format: 'commonjs' }),
    plugins: [entryJs()],
  },
  {
    ...ioOptions({ ext: '.d.ts', format: 'es' }),
    plugins: [dts()],
  },
];

export default config;
```


### entryJs rollup plugin

```js
import { Plugin } from 'rollup';
import { getChunkName } from '../utils';

const createEntryJsCode = (chunk: string) => `'use strict';

if (process.env.NODE_ENV === 'production') {
  module.exports = require('./${chunk}.min.js');
} else {
  module.exports = require('./${chunk}.dev.js');
}
`;

export default function entryJs(): Plugin {
  return {
    name: 'entryJs',
    transform(_, id) {
      const chunk = getChunkName(id);
      return chunk ? createEntryJsCode(chunk) : null;
    },
  };
}
```