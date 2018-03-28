# How to build a col-4 css?

## A: https://codepen.io/arvin0731/pen/EEorJQ

1. flex
2. inline-block
	2.1 set `white-space: nowrap` and `font-size:0` on container
	2.2 if item will have text, remeber set item font-size, otherwise... you can try it.

```pug
.container
  .item tes
  .item teds
  .item tdddes
  .item teddds
``` 


```css
.container {
  position: relative;
  box-sizing: border-box;
  width: 500px;
  height: 200px;
  background-color: black;
  white-space: nowrap;
  font-size: 0;
}

.item {
  display: inline-block;
  white-space: normal;
  width: 25%;
  background: yellow;
  height: 100px;
  box-sizing: border-box;
  border: 1px solid red;
  font-size: 16px;
}
```

