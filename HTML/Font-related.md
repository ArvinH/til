# The font display timeline

### Font block period

If the font face is not loaded, any element attempting to use it must render an invisible fallback font face. If the font face successfully loads during this period, it is used normally.

### Font swap period

If the font face is not loaded, any element attempting to use it must render a fallback font face. If the font face successfully loads during this period, it is used normally.

### Font failure period

If the font face is not loaded, the user agent treats it as a failed load causing normal font fallback.

res: https://developer.mozilla.org/en-US/docs/Web/CSS/@font-face/font-display


# unicode-range

The unicode-range CSS descriptor sets the specific range of characters to be used from a font defined by @font-face and made available for use on the current page. If the page doesn't use any character in this range, the font is not downloaded; if it uses at least one, the whole font is downloaded.

MDN: https://developer.mozilla.org/en-US/docs/Web/CSS/@font-face/unicode-range
other resource: https://css-tricks.com/almanac/properties/u/unicode-range/

# Reduce WebFont Size

res: https://web.dev/reduce-webfont-size/
