# git useful link
https://sethrobertson.github.io/GitFixUm/fixup.html

git subtree 用法
http://aoxuis.me/post/2013-08-06-git-subtree


git rev-parse 介紹
git rev-parse is an ancillary plumbing command primarily used for manipulation.

One common usage of git rev-parse is to print the SHA1 hashes given a revision specifier. In addition, it has various options to format this output such as --short for printing a shorter unique SHA1.


### 設定 git config in zsh

```sh
if [ -d .git ]; then
  git config alias.ci commit
	git config alias.co checkout 
	git config alias.st status
fi;
```

git cherry-pick 

用來挑選 commit 來 merge

刪除 branch

git branch -d <branch_name>

git push origin :<branch_name>

### Edit first commit through rebase

git rebase --root

### rename commit author

1. git rebase -i xxx
1. Change the specific commit with `edit`
1. git commit --amend --author="{Author name you want to show}"

