# .bashrc
norm="$(printf '\033[0m')" #returns to "normal"
bold="$(printf '\033[1m')" #set bold
red="$(printf '\033[31m')" #set red
cyan="$(printf '\033[36m')" #set cyan
boldred="$(printf '\033[1;31m')" #set bold, and set red.

#Keep Everythiing!
export HISTFILESIZE=1000000000
export HISTSIZE=1000000

#Enable VI mode
set -o vi

#Search history of your current command
bind '"\e[A"':history-search-backward
bind '"\e[B"':history-search-forward

#Find out what is taking up space
alias diskspace="du -S | sort -n -r | more"

#Go up x amount of DIR then output pwd
up() { cd $(eval printf '../'%.0s {1..$1}) && pwd; }

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

#Make cd display pwd
function cd { builtin cd "$@" && printf "%s" "$cyan" ;  pwd ; printf "%s" "$norm"; }

#Make cd display pwd and ls -al
function cdd { builtin cd "$@" &&  printf "%s" "$cyan" ; pwd ; printf "%s" "$norm" && ls -al; }

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi
