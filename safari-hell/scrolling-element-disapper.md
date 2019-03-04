# Safari scrolling causes HTML elements to disappear and reappear with a delay

Solution:
https://stackoverflow.com/questions/9807620/ipad-safari-scrolling-causes-html-elements-to-disappear-and-reappear-with-a-dela

tldr;

Add `transform: translate3d(0,0,0)`.

btw, we don't need prefix for transform now. ref: https://caniuse.com/#search=transform
