#!/usr/bin/env bash

git config --global alias.a "add"
git config --global alias.aa "add --update"
git config --global alias.aaa "add --all"
git config --global alias.ap "add --patch"
git config --global alias.authors "!git log --pretty=format:%aN | sort | uniq -c | sort -rn"
git config --global alias.br "branch -vv"
git config --global alias.bra "branch --all -vv"
git config --global alias.c "commit --verbose"
git config --global alias.ca "commit --verbose --all"
git config --global alias.amend "commit --verbose --amend --reset-author"
git config --global alias.clear "reset --hard"
git config --global alias.undo "reset --soft HEAD^"
git config --global alias.conflicts "diff --name-only --diff-filter=U --relative"
git config --global alias.co "checkout"
git config --global alias.cob "checkout -b"
git config --global alias.cot "checkout -t"
git config --global alias.d "diff"
git config --global alias.da "diff HEAD"
git config --global alias.ds "diff --staged"
git config --global alias.ignored "ls-files --exclude-standard --ignored --others"
git config --global alias.l "!git --no-pager log -20 --pretty='format:%C(yellow)%h %C(green)%ai %C(bold blue)%an %C(red)%d%C(reset) %s'; echo"
git config --global alias.ll "log --pretty='format:%C(yellow)%h %C(green)%ai %C(bold blue)%an %C(red)%d%C(reset) %s'"
git config --global alias.lf "log --name-status --pretty='format:%C(yellow)%h %C(green)%ai %C(bold blue)%an %C(red)%d%C(reset) %s'"
git config --global alias.lg "log --graph --pretty='format:%C(yellow)%h %C(green)%ai %C(bold blue)%an %C(red)%d%C(reset) %s'"
git config --global alias.lga "log --graph --branches --remotes --tags --pretty='format:%C(yellow)%h %C(green)%ai %C(bold blue)%an %C(red)%d%C(reset) %s'"
git config --global alias.m "merge --no-ff"
git config --global alias.p "push"
git config --global alias.pb "!git push --set-upstream origin `git rev-parse --abbrev-ref HEAD`"
git config --global alias.pru "remote prune origin"
git config --global alias.rb "rebase --preserve-merges"
git config --global alias.rba "rebase --abort"
git config --global alias.rbc "rebase --continue"
git config --global alias.rbi "rebase --interactive"
git config --global alias.rbs "rebase --skip"
git config --global alias.s "status --short --branch"
git config --global alias.sh "stash"
git config --global alias.sha "stash apply"
git config --global alias.shd "stash drop"
git config --global alias.shl "stash list"
git config --global alias.shp "stash pop"
git config --global alias.shs "stash show -p"
git config --global alias.sw "show --format=fuller"
git config --global alias.tags "tag --list -n1"
git config --global alias.bl "blame"
git config --global alias.cp "cherry-pick"

git config --global core.ui true
git config --global core.whitespace trailing-space,space-before-tab
git config --global core.editor vim

git config --global diff.algorithm histogram
git config --global diff.colorMoved plain
git config --global diff.mnemonicPrefix true
git config --global diff.renames true
git config --global diff.submodule log

git config --global fetch.prune true
git config --global fetch.pruneTags true
git config --global fetch.all true

git config --global init.defaultBranch main

git config --global merge.conflictstyle zdiff3

git config --global push.default simple
git config --global push.autoSetupRemote true
git config --global push.followTags true

git config --global status.submoduleSummary true

git config --global tag.sort version:refname