## Check if port is free

```js
const execSync = require('child_process').execSync;
 
module.exports = port => {
    try {
       // This will throw if the port is free - otherwise we know it's in use.
        execSync(`sudo lsof -i :${port}`);
        return false;
    } catch (e) {
        return true;
    }
};
```
