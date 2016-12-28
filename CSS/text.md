## Truncate String with Ellipsis

All the following are required, so the text must be in a single straight line that overflows a box where that overflow is hidden.
```css
.truncate {
    width: 250px;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
}
```

https://developer.mozilla.org/en-US/docs/Web/CSS/text-rendering

text-rendering property:

The text-rendering CSS property provides information to the rendering engine about what to optimize for when rendering text.

The browser makes trade-offs among speed, legibility, and geometric precision.
