Codio root files
================

My config files for use with Codio (or Nitrous, or possibly any online IDE environment). I really 
wish they would allow me to create a template with these files (maybe they do). But,
until I find another solution this will work for now.

Usage:
```
cd ~
git clone --no-checkout git@github.com:doleksy/misc.git
mv misc/.git .
rm -rf misc
git reset --hard HEAD
source .bashrc
```

(Thanks to [stackoverflow](http://stackoverflow.com/questions/2411031/how-do-i-clone-into-a-non-empty-directory))
