## Pure css arrow style

### usage

```html
<!-- top left -->
<div class="introBox Arrow top left">
</div>

<!-- bottom right -->
<div class="introBox Arrow bottom right">
</div>

<!-- don't care direction order -->
<!-- this one is same as above -->
<div class="introBox Arrow right bottom">
</div>
```
```css
.Arrow:after,
.Arrow:before {
        border: solid transparent;
            content: " ";
                height: 0;
                    width: 0;
                        position: absolute;
                            pointer-events: none;
}
.Arrow:after {
        border-color: rgba(136, 183, 213, 0);
            border-width: 6px;
                margin-left: 0px;
}
.Arrow:before {
        border-color: rgba(194, 225, 245, 0);
            border-width: 8px;
                margin-left: -3px;
}

.Arrow.top:after,
.Arrow.top:before {
      border-bottom-color: #00b494;
        bottom: 100%;
}

.Arrow.bottom:after,
.Arrow.bottom:before {
      border-top-color: #00b494;
        top: 100%;
}

.Arrow.left:after,
.Arrow.left:before {
      left: 13px;
}

.Arrow.right:after,
.Arrow.right:before {
      right: 13px;
}
```
