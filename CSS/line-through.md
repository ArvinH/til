## How to style line through

tl;dr

Ans: use `background-image` to achieve this goal

```css
body {
  padding: 1em;
}

.multiline-strike strike {
  text-decoration: none;
  background-image: -webkit-linear-gradient(transparent 7px,#cc1f1f 7px,#cc1f1f 9px,transparent 9px);
}
```

```html
<pre class="prettyprint">
function somethingSimple() {
<strike>  // 1000</strike>
  // no goes here
}
</pre>

<pre class="prettyprint multiline-strike">
function somethingFancier() {
<strike>  /* goes here
     and here
     and here */ </strike> 
  // no goes here
}
</pre>

<link href="https://developer.chrome.com/static/css/prettify.css" rel="stylesheet" type="text/css">
<script src="https://developer.chrome.com/static/js/prettify.js"></script>
```

source: https://codepen.io/pearlchen/pen/dhpxu
