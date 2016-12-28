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
