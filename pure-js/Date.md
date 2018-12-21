# Performance - Date.now() vs Date.getTime()

relevant link: https://stackoverflow.com/questions/12517359/performance-date-now-vs-date-gettime

## Highest answer

These things are the same (edit semantically; performance is a little better with .now()):

```
var t1 = Date.now();
var t2 = new Date().getTime();
```

However, the time value from any already-created Date instance is frozen at the time of its construction (or at whatever time/date it's been set to). That is, if you do this:

`var now = new Date();` and then wait a while, a subsequent call to now.getTime() will tell the time at the point the variable was set.

## The point is...

They are effectively equivalent, but you should use Date.now(). It's clearer and about twice as fast.

Edit: Source: http://jsperf.com/date-now-vs-new-date

