# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    #alias dir='ls --color=auto --format=vertical'
    #alias vdir='ls --color=auto --format=long'
fi

alias ..='cd ..'
alias sv="env | grep"
alias h="history | grep"
alias grep="grep --color=auto"

#some standard settings
export EDITOR=/usr/bin/vim

# change color of hostname according to name
hostcolor="38;5;$(($(cksum<<<$(hostname)|cut -f1 -d' ')%210+22))" 
export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\[\033['$hostcolor'm\]\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

#xtrace output would be more useful if it contained source file and line number (by AnMaster)
export PS4='+(${BASH_SOURCE}:${LINENO}): ${FUNCNAME[0]:+${FUNCNAME[0]}(): }'
#export PS4='+\[\033[01;32m\]${BASH_SOURCE}\[\033[0m\]:\[\033[01;34m\]${LINENO}\[\033[0m\]:${FUNCNAME[0]:+${FUNCNAME[0]}():}'

#for python
export PYTHONSTARTUP=~/.pythonrc

#we need this module for remote login
module load git

#you may also us -u /sw/centos58-x64/devtools/git-1.7.4.1/bin/git-upload-pack
#but this will break if the path changes...
#eclipse git does not allow you to pass the command though.... :-/

#now load some aliases
source .git_bashrc

#[[ $(id -gn) != "bmx828" ]] && newgrp bmx828 && exit
