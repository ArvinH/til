# d3 get parentNode usage (for get specific node)
## d3 v3 
for example:

in `path`: 
(path is `this`)
`d3.select(this.parentNode.parentNode).select('.lg.label');`

```html
<g >
    <g>
        <path />
    </g>
    <text class="lg label">
</g>
```
