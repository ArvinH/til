## how to hidden scroll bar but still can scroll

wrapper a outter-container with smaller width (or height) in Ov(h)

```jsx
<div className="Pos(r) H(100%) W(100%) Ov(h)">
    <div className="Pos(r) H(100%) W(515px) M(a) Bgc(white) Ov(a)">
        <Cover smartContentData={smartContentData} smartContentDataStat={smartContentDataStat} />
        <Question wrapperClass="M(a) W(90%)" data={smartContentData} total={smartContentData.questions.length || 0} currentIndex={0} />
        <Options wrapperClass="M(a) W(90%)" opts={opts} triggerModal={this.handleClick}/>
    </div>
</div>
```

## pure css solution
src: https://blogs.msdn.microsoft.com/kurlak/2013/11/03/hiding-vertical-scrollbars-with-pure-css-in-chrome-ie-6-firefox-opera-and-safari/

There is a CSS rule that can hide scrollbars in Webkit-based browsers (Chrome and Safari).  That rule is: 
    `.element::-webkit-scrollbar { width: 0 !important }`
There is a CSS rule that can hide scrollbars in IE 10+.  That rule is: 
    `.element { -ms-overflow-style: none; }`
There used to be a CSS rule that could hide scrollbars in Firefox, but it has since been deprecated.  That rule was: 
    `.element { overflow: -moz-scrollbars-none; }`

