# Use git to debug

## git bisect

```
$ git bisect start
$ git bisect bad
$ git bisect good v1.0
Bisecting: 6 revisions left to test after this
[ecb6e1bc347ccecc5f9350d878ce677feb13d3b2] error handling on repo
```

> Git 發現在你標記為正常的提交(v1.0)和目前的錯誤版本之間有大約12次提交，於是它 check out 中間的一個。在這裡，你可以進行測試，檢查問題是否存在於這次提交。如果是，那麼它是在這個中間提交之前的某一次引入的；如果否，那麼問題是在中間提交之後引入的。假設這裡是沒有錯誤的，那麼你就通過 git bisect good 來告訴 Git 然後繼續你的旅程：

src: https://git-scm.com/book/zh-tw/v1/Git-%E5%B7%A5%E5%85%B7-%E4%BD%BF%E7%94%A8-Git-%E5%81%9A-Debug

