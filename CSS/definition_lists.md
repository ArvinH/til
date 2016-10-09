## CSS 在 Definition lists 中插入斷行的方式

以下的html， 每個 `<dt>` 與 `<dd>` 都會各佔一行

```html
<dl>
<dt> Name: </dt>
</dd> Arvin Huang </dd>

<dt> Email: </dt>
</dd> arvin0731@gmail.com </dd>

<dt> Location: </dt>
</dd> Taiwan </dd>

</dl>
```

若我們希望他能夠一組 `<dt>` 與 `<dd>` 是一行的話，
可以這麼做：

```css
dt， dd {
	display: inline;
}

dd {
	margin: 0;
	font-weight: bold;
}

dd::after {
	content: "\A";
	white-space: pre;
}
```

其中 `content: "\A"`， 0x000A 這個 Unicode 符號等同於 js 中的 '\n' （換行符號）
而 `white-space: pre` 則是因為在 html 中， 斷行符號會跟空白合併， 因此需要加上這個屬性才能顯示出換行效果。

然而！這樣的解法， 會造成每個欄位不能有多個值， 因為每個 `<dd>` 後面都會有斷行。

直覺上， 我們可以改成在每個 `<dt>` 前面加上斷行， 但這樣會導致第一行是空白。

最終解法：

**我們要在 每個 跟在 另一個`<dd>`之後的 `<dd>` 前面 加上逗號。

```css
dd + dt::before {
	content: '\A';
	white-space: pre;
}

dd + dd::before {
	content: '， ';
	font-weight: bold;
}
```

source:
http://play.csssecrets.io/line-breaks

