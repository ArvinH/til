# How to implement Debounce and Throttle function in JS

source: https://github.com/lishengzxc/bblog/issues/7

## Debounce

```js
/**
 *
 * @param fn {Function}   Actual function that we want to execute
 * @param delay {Number}  delay time (ms) 
 *
 * @return {Function}     return a debounced function 
 */

function debounce(fn, delay) {

  // timer for setTimeout
  let timer

  // return a function that will execute fn after delay time
  return function () {

		// save context and arguments to fn
    const context = this
    const args = arguments

		// Every time this returned function be called, we clear timer to make sure fn wouldn't be called
    clearTimeout(timer)
    // Since after clearTimeout, we set a new Timer
    // So, the last time user trigger returned function, it will execute fn after delay time
    timer = setTimeout(function () {
      fn.apply(context, args)
    }, delay)
  }
}
```

## Throttle

```js
/**
*
* @param fn {Function}   Actual function that we want to execute
* @param threshold {Number}  execute time interval (ms)
*
* @return {Function}     return a throttle function 
*/

function throttle(fn, threshold) {

	// record last time throttle been called
  let last

  let timer

  threshold || (threshold = 250)

	// return a function that will execute fn after threshhold time
  return function () {

    const context = this
    const args = arguments

    const now = +new Date()

    // if the time interval smaller than threshold time plust last time we execuate returned function, then we give up execute fn, and restart timer
    if (last && now < last + threshold) {
      clearTimeout(timer)

			// this make sure we always execute fn after threshold time (after the returned function been called)
      timer = setTimeout(function () {
        last = now
        fn.apply(context, args)
      }, threshhold)

    } else {
			// this is for the beginning of returned function call and exactly match threshold time
      last = now
      fn.apply(context, args)
    }
  }
}
```

