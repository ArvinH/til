```sh
# Copyright (C) 2006,2007 Shawn O. Pearce <spearce@spearce.org>
# Conceptually based on gitcompletion (http://gitweb.hawaga.org.uk/).
# Distributed under the GNU General Public License, version 2.0.

if [ -d .git ]; then
  echo .git;
else
  git rev-parse --git-dir 2> /dev/null;
fi;
```
