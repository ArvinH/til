## X-DNS-Prefetch-Control

This prefetching is performed in the background, so that the DNS is likely to have been resolved by the time the referenced items are needed. This reduces latency when the user clicks a link.

source: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-DNS-Prefetch-Control

example:
<link rel="dns-prefetch" href="//l.yimg.com">

