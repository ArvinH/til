#In a Git repository, how to properly rename a directory?

link:
https://stackoverflow.com/questions/11183788/in-a-git-repository-how-to-properly-rename-a-directory

Ans:

Basic rename (or move):

`git mv <old name> <new name>`
Case sensitive rename—eg. from casesensitive to CaseSensitive—you must use a two step:

```
git mv casesensitive tmp
git mv tmp CaseSensitive
```

### If you receive this error: fatal: renaming ‘foldername’ failed: Invalid argument

Try this:

`git mv foldername tempname` && `git mv tempname folderName`
