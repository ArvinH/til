# shell script notes


### What is 2>&1

ref: https://charleslin74.pixnet.net/blog/post/405455902

example:

```
nohup /mnt/Nand3/H2000G  >/dev/null  2>&1  &
```

* 0: keyboard input
* 1: screen output
* 2: error output

`2>&1` 代表我們把標準錯誤輸出定向到標準輸入

在 `nohup /mnt/Nand3/H2000G  >/dev/null  2>&1  &` 中，我們先將 `/mnt/Nand3/H2000G` 的標準輸出定向到 `/dev/null` 中，接著 `2>&1` 把標準錯誤輸出到標準輸出 1，但其實也就是 `/dev/null`。這也是為什麼 `2>&1` 要放在後面的原因。

最後的 & 就是背景執行而已。

