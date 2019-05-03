# .bashrc
#get current directory
CUR_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ]; then
    export CLICOLOR=1
fi

alias l='ls -l'
alias ll='l -a'
alias ..='cd ..'
alias sv="env | grep"
alias h="history | grep"
alias grep="grep --color=always"

#some standard settings
export EDITOR=/usr/bin/vim

# change color of hostname according to name
hostcolor="38;5;$(($(cksum<<<$(hostname)|cut -f1 -d' ')%210+22))" 
export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\[\033['$hostcolor'm\]\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

#xtrace output would be more useful if it contained source file and line number (by AnMaster)
export PS4='+(${BASH_SOURCE}:${LINENO}): ${FUNCNAME[0]:+${FUNCNAME[0]}(): }'
#export PS4='+\[\033[01;32m\]${BASH_SOURCE}\[\033[0m\]:\[\033[01;34m\]${LINENO}\[\033[0m\]:${FUNCNAME[0]:+${FUNCNAME[0]}():}'

#for python
export PYTHONSTARTUP=$CUR_DIR/.pythonrc


#you may also us -u /sw/centos58-x64/devtools/git-1.7.4.1/bin/git-upload-pack
#but this will break if the path changes...
#eclipse git does not allow you to pass the command though.... :-/

#now load some aliases
source $CUR_DIR/.git_bashrc

#add current bin to path if exists
if [ -d "$CUR_DIR/bin" ] ; then
    PATH="$CUR_DIR/bin:$PATH"
    export PATH
fi
# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
    export PATH
fi

#single history for all sessions
shopt -s histappend
HISTSIZE=10000
# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

