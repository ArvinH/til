## declare static props:

If you use the experimental transform http://babeljs.io/docs/plugins/transform-class-properties/, then you can just use static defaultProps = {...};.
No need for changes to the constructor. Otherwise, you need to assign outside:

```jsx
class X extends React.Component {
}
X.defaultProps = {...};
```

