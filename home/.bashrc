#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
export EDITOR="nano"
export PATH="$PATH:~/Scripts"

source "$HOME/.homesick/repos/homeshick/homeshick.sh"