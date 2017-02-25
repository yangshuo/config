#!/bin/bash

# === Git configuration ====
source ~/.git-prompt.sh

#==== Define the color, for more information ,please refer to https://wiki.archlinux.org/index.php/Color_Bash_Prompt
#export GREEN=32
#export RED=31
#export BLUE=34
#export YELLOW=43
#export MAGENTA=35
#export WHITE=47
#
#export PS1="\[$GREEN\]\t\[$RED\]-\[$BLUE\]\u\[$YELLOW\]\[$YELLOW\]\w\[\033[m\]\[$MAGENTA\]\$(__git_ps1)\[$WHITE\]\$ "
#export PS1='\[\033[01;32m\][\u@\h\[\033[01;34m\] \w$(__git_ps1 " (%s)")]\[\033[01;34m\]\$ \[\033[00m\]]'
export PS1='\h:\W$(__git_ps1 " (%s)") \u\$ '

# ==== git user information ====
git config --global user.name "yangshuo"
git config --global user.email "yangshuosdu@gmail.com"

# ==== git merge/diff tool ====
git config --global merge.tool kdiff3
git config --global mergetool.kdiff3.path "/cygdrive/c/Program Files/KDiff3/kdiff3.exe"
git config --global core.editor vim
git config --global diff.tool kdiff3
git config --global difftool.kdiff3.path "/cygdrive/c/Program Files/KDiff3/kdiff3.exe"

# ==== git color configuration ====
git config --global color.branch auto
git config --global color.diff auto
git config --global color.interactive auto
git config --global color.status auto

# ==== git alias ====
#git config --global alias.st status
#git config --global alias.ci commit
#git config --global alias.co checkout
#git config --global alias.br branch
#git config --global alias.dc dcommit
#git config --global alias.rb rebase
