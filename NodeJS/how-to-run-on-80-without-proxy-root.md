Q:How to run node.js app on port 80? Are processes blocking my port?o
http://serverfault.com/questions/602240/how-to-run-node-js-app-on-port-80-are-processes-blocking-my-port


Ticky answer:
The simplest, best answer imho:

sudo apt-get install libcap2-bin
sudo setcap cap_net_bind_service=+ep /usr/local/bin/node
Ta da! This allows your node app to run on port 80 without complaining.
Why do I like it? Because:

You don't have to use apache or nginx
You don't have to run your application as root
You won't have to forward ports (and handle that each time your machine boots)
Reference Link: https://www.digitalocean.com/community/tutorials/how-to-use-pm2-to-setup-a-node-js-production-environment-on-an-ubuntu-vps (A great article on how to set up your node app on cloud hosting).
