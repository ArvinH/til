Better way to handle binding in ES6 React

```jsx
class BaseComponent extends React.Component {
    _bind(...methods) {
        methods.forEach( (method) => this[method] = this[method].bind(this) );
    }
}
 
 class ExampleComponent extends BaseComponent {
     constructor() {
         super();
         this._bind('_handleClick', '_handleFoo');
     }
     // ...
 }
 ```
