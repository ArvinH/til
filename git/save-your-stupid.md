
# Take a deep breath, sit back (or stand back, if you work on a standing desktop), and don’t panic.
When you force pushed your changes to Github, something like this happened:

```sh
$ git push --force
Counting objects: 3, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (2/2), done.
Writing objects: 100% (2/2), 231 bytes | 0 bytes/s, done.
Total 2 (delta 1), reused 0 (delta 0)
To git@github.com:your-organisation/your-important-repo.git
 + #{OLD_SHA}...#{NEW_SHA} very-important-branch -> very-important-branch (forced update)
```

 See that #{OLD_SHA} reference? it will be our friend here. But you will need the full SHA reference to make this happen, because we’re going to play a little with Curl in a bit.

 Now, head to https://github.com/your-organisation/your-important-repo/commit/#{OLD_SHA} and you’ll be able to grab your full SHA reference code from there.

source: http://pablofabregat.com/git/yes-you-can-revert-a-git-push-force


# How to change the commit author for one specific commit?

Interactive rebase off of a point earlier in the history than the commit you need to modify (`git rebase -i <earliercommit>`). In the list of commits being rebased, change the text from pick to edit next to the hash of the one you want to modify. Then when git prompts you to change the commit, use this:

`git commit --amend --author="Author Name <email@address.com>"`

ref: https://stackoverflow.com/questions/3042437/how-to-change-the-commit-author-for-one-specific-commit/28845565

