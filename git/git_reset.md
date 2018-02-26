# Git: sync local repo with remote one - reset part

https://stackoverflow.com/a/12306788

These steps will do it:

```
git reset --hard HEAD
git clean -f -x -d -n
```
then without -n

This will take care of all local changes. Now the commits...

`git status`
and note the line such as:

Your branch is ahead of 'xxxx' by N commits.
Take a note of number 'N' now:

```
git reset --hard HEAD~N
git pull
```
and finally:

`git status`
should show nothing to add/commit. All clean.

However, a fresh clone can do the same (but is much slow).

===Updated===

As my git knowledge slightly improved over the the time, I have come up with yet another simpler way to do the same. Here is how (#with explanation). While in your working branch:

```
git fetch # This updates 'remote' portion of local repo. 
git reset --hard origin/<your-working-branch>
# this will sync your local copy with remote content, discarding any committed
# or uncommitted changes.
```

Although your local commits and changes will disappear from sight after this, it is possible to recover committed changes, if necessary.
