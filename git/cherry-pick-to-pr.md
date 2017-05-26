## one way to cherry-pick commit to PR:

git checkout master
git pull upstream master
git checkout -b mybranch
git cherry-pick <commit-hash>
git push origin mybranch:mybranch
