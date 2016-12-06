## Animation limitation

gradient can't be transition

if you want to animation gradient background, try transition background-position

ex:

<p data-height="265" data-theme-id="0" data-slug-hash="PGQqXL" data-default-tab="css,result" data-user="arvin0731" data-embed-version="2" class="codepen">See the Pen <a href="http://codepen.io/arvin0731/pen/PGQqXL/">Business Card</a> by Arvin (<a href="http://codepen.io/arvin0731">@arvin0731</a>) on <a href="http://codepen.io">CodePen</a>.</p>
<script async src="//assets.codepen.io/assets/embed/ei.js"></script>


## CSS 3D

css 3d will make `position: fixed` relate to div container which apply css 3d

EX:  https://jsbin.com/qozizi/edit?html,output

```html

<div style="height: 400px; width: 500px; overflow:auto; background-color: white">
    <div style="position: absolute; top: 50px; width: 500px; height: 500px">
        <div class="fixedHeader" style="position:fixed; width: 100%; background-color: yellow">
            d
        </div>
    </div>

    <div style="transform: translateZ(0); position: absolute; top: 100px; width: 500px; height: 500px">
        <div class="fixedHeader" style="position:fixed; width: 100%; background-color: black">
            d
        </div>
    </div>
</div>
```

