## how to grep propertly

grep 'xxx' some/path/ -ron

o: only show match files name


### show +50 & -50 lines between keyword (Perl-like search)

grep '.{0,50}VideoReelStore.{0,50}' -roP . | grep bundle.js
