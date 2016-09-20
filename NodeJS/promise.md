you can setTimeout for promise:

```js
Promise.race([
        fetch(event.request),
        new Promise((_, reject) => {
            setTimeout(() => reject(Error('Timeout')), timeout)
            })
        ]).catch(() => caches.match(event.request));
```
