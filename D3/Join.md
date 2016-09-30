reference: https://ils.unc.edu/~gotz/D3joins/

## How Joins Work:

First, we took a new data array and joined it to a selection of graphical objects from an existing visualization. That join created three distinct selections:

* The update selection contains the data that is in both the original selection and the new data being joined.
* The exit selection contains the selection items for which there is no match within the new data being joined.
* The enter selection contains the new data items being joined for which no match for which there is no match in the original selection.

Then, we used these three selections to update the visualization. We removed items in the exit selection, we changed the position of items in the update selection, and we added new SVG Text elements to the visualization for items in the enter selection.

```js
var letters = d3.select('svg').selectAll('text').data(vowels, function(d) {
        return d;
        });
```

### remove 

```js
letters.exit().remove();
```

```js
letters.attr('x', function(d,i) { return i*15; });
```

### enter
```js
letters.enter().append('text')
.text(function(d) { return d; }) 
.attr('x', function(d,i) { return i*15; })
.attr('y', 15);
```
