# virtual memory exhausted: Cannot allocate memory

## Problem
当安装虚拟机时系统时没有设置swap大小或设置内存太小，编译程序会出现virtual memory exhausted: Cannot allocate memory的问题，可以用swap扩展内存的方法。

If you didn't set swap size or set it small while installing VM, it could show "virtual memory exhausted: Cannot allocate memory" error.
We can use swap to extend memory.

Source:
https://blog.csdn.net/taiyang1987912/article/details/41695895

Check your current memory & swap

```
free -m
```

Create a swap file for extending memory

```
mkdir /opt/allocateMem/
```

```
dd if=/dev/zero of=/opt/allocateMem/swap bs=1024 count=2048000
```


```
mkswap /opt/allocateMem/swap
```

```
swapon /opt/allocateMem/swap
```


After all command above, check again, it should work.

```
free -m
```

example from source:
```
[root@Byrd byrd]# free -m
             total       used       free     shared    buffers     cached
Mem:           512        108        403          0          0         28
-/+ buffers/cache:         79        432
Swap:            0          0          0
[root@Byrd ~]# mkdir /opt/images/
[root@Byrd ~]# rm -rf /opt/images/swap
[root@Byrd ~]# dd if=/dev/zero of=/opt/images/swap bs=1024 count=2048000
2048000+0 records in
2048000+0 records out
2097152000 bytes (2.1 GB) copied, 82.7509 s, 25.3 MB/s
[root@Byrd ~]# mkswap /opt/images/swap
mkswap: /opt/images/swap: warning: don't erase bootbits sectors
        on whole disk. Use -f to force.
Setting up swapspace version 1, size = 2047996 KiB
no label, UUID=59daeabb-d0c5-46b6-bf52-465e6b05eb0b
[root@hz mnt]# swapon /opt/images/swap
[root@hz mnt]# free -m
             total       used       free     shared    buffers     cached
Mem:           488        481          7          0          6        417
-/+ buffers/cache:         57        431
Swap:          999          0        999
```

