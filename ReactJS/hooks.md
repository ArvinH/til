# Anything about Hooks


## useRef

useRef could use for creating immutable object, not only can be used for retrieving dom.

example:

```js
const { current: handlers } = useRef({
  mouseDown: (e: React.MouseEvent<HTMLDivElement>) => {
    if (outer.current) {
      isDrag.current = true;
      lastDragPoint.current = [e.pageX, e.pageY];
      outer.current.style.cursor = 'grab';
      outer.current.style.userSelect = 'none';
    }
    // XXX: this line is so important, prevents lot of performance waste
    e.stopPropagation();
  },
  mouseMove: throttle((e: React.MouseEvent<HTMLDivElement>) => {
    if (isDrag.current && el.current) {
      const diff: [number, number] = [e.pageX - lastDragPoint.current[0], e.pageY - lastDragPoint.current[1]];
      if (el.current) {
        el.current.style.transform = `scale(${el.current.dataset.zoom}) translate(${diff[0]}px, ${diff[1]}px)`;
        translate.current = diff;
      }
    }
  }, 18),
  mouseUp: () => {
    if (outer.current && isDrag.current) {
      outer.current.style.cursor = 'auto';
      outer.current.style.userSelect = 'auto';
    }
    isDrag.current = false;
  },
});
```
