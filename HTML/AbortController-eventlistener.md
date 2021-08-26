# Using AbortController as an Alternative for Removing Event Listeners

source: https://css-tricks.com/using-abortcontroller-as-an-alternative-for-removing-event-listeners/

<p class="codepen" data-height="300" data-theme-id="29194" data-default-tab="js,result" data-user="CarterLi" data-slug-hash="JjbowjX" style="height: 300px; box-sizing: border-box; display: flex; align-items: center; justify-content: center; border: 2px solid; margin: 1em 0; padding: 1em;" data-pen-title="drag">
  <span>See the Pen <a href="https://codepen.io/CarterLi/pen/JjbowjX">
  drag</a> by CarterLi (<a href="https://codepen.io/CarterLi">@CarterLi</a>)
  on <a href="https://codepen.io">CodePen</a>.</span>
</p>
<script async src="https://cpwebassets.codepen.io/assets/embed/ei.js"></script>


Chrome 88 is currently the only place where addEventListener officially accepts an AbortSignal. While other major browsers, including Firefox and Safari, support AbortController, integrating its signal with addEventListener is a no go at the moment… and there are [no signals](https://www.chromestatus.com/feature/5658622220566528) (pun sorta intended) that they plan to work on it. That said, a [polyfill](https://github.com/mysticatea/event-target-shim) is available.