### Difference between browserHistory and hashHistory

browserHistory 需要 server 端支持，/url/user  會去打 server request
也就是你的 server 要吃 get /url/user 這樣的 request

hashHistory 不會真的去打 server request, react-router 自己根據對應的router 去 render

所以靜態網頁只能用 hashHistory (that's why github page should use hashHistory)
