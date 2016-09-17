# create-react-pwa 

遇到的雷：

1. 不管是使用 favicon.ico 或是 一般png 當 Icon，相關路徑都要調整好，manifest.json 裡面的檔案不會被 react-scripts 的build 抓到
除了要記得把檔案 copy 進去（build 完以後)，也要調整相關路徑

2. manifest.json 在 index.html 裡面的相關路徑目前有 bug，( webpack loader 的關係 ），我目前是先到 build 底下去做調整

3. 可以用 npm run eject 把相關config 檔案推出來自己操控，但塞不回去喔！
