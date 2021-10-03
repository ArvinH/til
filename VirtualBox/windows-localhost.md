# How to access the localhost server on Host from Guest(Windows)

By default, 10.0.2.2 is the gateway ip in Windows Guest env, 10.0.2.2 equal to localhost

So if you only need to access localhost on Host from Windows Guest, use 10.0.2.2 instead.

However, sometimes you have to connect to "localhost" (most time it's because of Authentication reason), in this case, you can use NETSH to portproxy to the host:

```sh
netsh interface portproxy add v4tov4 listenaddress=127.0.0.1 listenport=8000 connectaddress=10.0.2.2 connectport=8000
```

(where 10.0.2.2 is the default gateway on the VM and 8000 is the port you want to resolve to on the host.)

You might think, why not just change `host.conf`, add the mapping `10.0.2.2 localhost`?

Well, it no longer works, for security reassons Microsoft now prevents host file entries for overriding the address of localhost to anything other than the loopback address ::1. So adding a line the VM's host file such as `10.0.2.2 localhost` will be ignored.

Src: https://stackoverflow.com/questions/1261975/addressing-localhost-from-a-virtualbox-virtual-machine
