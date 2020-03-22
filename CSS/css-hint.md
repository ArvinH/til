# Pure CSS hint

Reference: https://github.com/catc/simple-hint

## example

```css
*[data-hint] {
    position: relative;
  }

*[data-hint]:hover:before {
  position: absolute;
  left: 0;
  top: 100%;
  margin-top: -8px;
  border: 8px solid transparent;
  border-bottom-color: rgba(0,0,0,0.7);
  height: 0;
  width: 0;
  content: '';
}

*[data-hint]:hover:after {
  position: absolute;
  font-size: 10px;
  font-family: Arial, Helvetica, sans-serif;
  left: -25%;
  top: 100%;
  padding: 8px 12px 8px 12px;
  margin-top: 8px;
  white-space: nowrap;
  display: flex;
  align-items: center;
  justify-content: center;
  background-color: rgba(0,0,0,0.7);
  color: white;
  content: attr(data-hint);
  z-index: 10;
}
```

```html
<i data-hint="hint content" />
```

