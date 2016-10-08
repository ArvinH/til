### Watch ENOSPC

The system has a limit to how many files can be watched by a user. You can run out of watches pretty quickly if you have Grunt running with other programs like Dropbox.
This command increases the maximum amount of watches a user can have ---  Benjamin Manns

```sh
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
```
