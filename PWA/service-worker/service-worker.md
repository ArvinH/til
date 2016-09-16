# Service-worker

There are many types of worker:

dedicated, shared web workers and service worker

dedicated and shared web workers 比較偏向是運行於主執行緒外的thread，幫忙處理一些與頁面渲染無關的work。
詳細區別在這： https://developer.mozilla.org/zh-TW/docs/Web/API/Web_Workers_API/Using_web_workers

Service worker 比較偏重於web app 和瀏覽器以及網路之間的proxy server 的角色，攔截網路請求，進行反應（cache 等等)，也可用於推播

Google tutorial: 
https://developers.google.com/web/fundamentals/primers/service-worker
