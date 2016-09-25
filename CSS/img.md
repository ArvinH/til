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
https://developer.mozilla.org/en-US/docs/Web/CSS/object-fit

```html
<h2>object-fit: cover</h2>
<img src="https://mdn.mozillademos.org/files/6457/mdn_logo_only_color.png" alt="MDN Logo" class="cover"/>
```

```css
.cover {
      object-fit: cover;
}
```

---

use `srcset` for different resolution img

https://css-tricks.com/responsive-images-youre-just-changing-resolutions-use-srcset/

example:

`<img src='xx' srcset='xxx.png 1000w aaa.png 2000w' />
