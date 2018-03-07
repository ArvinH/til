Q: 
```
$ ssh-add ~/.ssh/id_rsa.pub
Could not open a connection to your authentication agent.
```

or

```
$ ssh-add ~/.ssh/self_github
Error connecting to agent: Connection refused
```


Answer:
link:
https://stackoverflow.com/questions/17846529/could-not-open-a-connection-to-your-authentication-agent/17848593#17848593

You might need to start ssh-agent before you run the ssh-add command:

```
eval `ssh-agent -s`
ssh-add
```

