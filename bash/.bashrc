#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias vim=nvim
redshift -P -O 4000
PS1='[\u@\h \W]\$ '
