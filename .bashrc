#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# for tmux: export 256color
[ -n "$TMUX" ] && export TERM=screen-256color

alias tmux="tmux -2"
