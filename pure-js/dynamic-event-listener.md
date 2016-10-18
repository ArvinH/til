## Attach event to dynamic elements in javascript

according to this answer on so: http://stackoverflow.com/questions/34896106/attach-event-to-dynamic-elements-in-javascript


```js
document.addEventlistener('click',function(e){
    if(e.target && e.target.id== 'brnPrepend'){//do something}
 })
```

read more:
https://davidwalsh.name/event-delegate
