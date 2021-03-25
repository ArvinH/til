# The font display timeline

### Font block period

If the font face is not loaded, any element attempting to use it must render an invisible fallback font face. If the font face successfully loads during this period, it is used normally.

### Font swap period

If the font face is not loaded, any element attempting to use it must render a fallback font face. If the font face successfully loads during this period, it is used normally.

### Font failure period

If the font face is not loaded, the user agent treats it as a failed load causing normal font fallback.

res: https://developer.mozilla.org/en-US/docs/Web/CSS/@font-face/font-display