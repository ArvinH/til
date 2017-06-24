## React 中文輸入法在 `<Input />` 的情況

用中文輸入法的時候，一個字通常都會由好幾個注音或是拼音 "組成"，若你只用 Input 的 `onChange` 事件來監聽，會發現你字都還沒有打完，他就不斷呼叫 onChange，造成一些流程上的不正確。

解決方法是利用 `onCompositionStart`, `onCompositionUpdate` 和 `onCompositionEnd` 來偵測字是否已經 `compositionend` 了（組合完成）

此外，要完成組字或是選字，通常是需要按下 enter，這次按下的 enter 會觸發 `compositionend` 也會有 `onKeyDown` 與 `onChange`，而在不同 Browser 的版本上，compositionend 與 onKeyDown、onChange 的發生時機會有點差異，像是 Safari on Mac OS，就會在 compositionend 後多送一次 KeyDown event，而那次的 keyDown event 雖然也會是 e.key === 'Enter'，但是 e.code, e.which 會是 229，229 就是在 compsition 階段（start ~ end）的每個 keyDown event 的 key code。

Solution: JSbin-example

http://jsbin.com/belobub/3/edit?html,js,output
