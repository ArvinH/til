In some mobile device, the behavior of hiding browser search bar will trigger window resize event which is not what we expected.

Solution:

In your window resize event handler, check if the width is really change:
`if (newWidth === mapScaleWidth) return;`

