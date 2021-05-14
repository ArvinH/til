# scroll events: requestAnimationFrame VS requestIdleCallback VS passive event listeners

ref: https://stackoverflow.com/questions/41740082/scroll-events-requestanimationframe-vs-requestidlecallback-vs-passive-event-lis/44779316#44779316

TL;DR

for lazyloading, infinite view use a combination of setTimeout + requestIdleCallback for your event listeners and use rAF for any layout writes (DOM mutations).
for instant effects still use rAF for any layout writes (DOM mutations).
