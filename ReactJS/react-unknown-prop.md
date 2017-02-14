# facing react-unknown-prop ?
references:
https://fb.me/react-unknown-prop

but we can use `lodash` to solve this easily.

for example:
    use
    ```jsx
    var restProps = _.omit(this.props, ["initialValue", "fullwidth"]);
    <Component {...restProps} />
    ```

    instead of
    ```jsx
    <Component {...this.props} />
    ```

