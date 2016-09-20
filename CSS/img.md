# Tips of <img>

The srcset attribute or the <picture> element will select the most appropriate image asset at run time and make a network request.

for example:
```css
    <img src="image-src.png" srcset="image-src.png 1x, image-2x.png 2x" />
```

---
`<img>` vs `background-img` performance & use timing:

`<img>` is better for SEO

// not sure this one
`background-img` only load when DOM ready, may not blocking page load (if use inline style)

if you use css file to contain bunch of background-img? --> may slower than `<img>`


---

use `object-fit` in `<img>` can replace `background-size: cover` & `background-position: center center`
