# $ROOT/.bashrc: executed by bash(1) for non-login shells.

PS1='${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\u@\h\[\033[01;35m\]:\[\033[01;33m\]\w\[\033[01;35m\]\$\[\033[00m\] '

HISTFILE="$HOME/.cache/bashlogs"

# You may uncomment the following lines if you want `ls' to be colorized:
export LS_OPTIONS='--color=auto'
export PAGER=less
eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -lA'
alias la='ls $LS_OPTIONS -A'

#Colored Manpages
export LESS_TERMCAP_mb=$'\E[01;36m'
export LESS_TERMCAP_md=$'\E[01;36m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;34m'

# Some more alias to avoid making mistakes:
RBS=$HOME/.local/share/vifm/Trash
alias cp='cp -i'
alias mv='mv -i'
alias rm="mv -i -t ${RBS}"
alias eliminate='/bin/rm -i'

#Common Alias
alias cdp='cd ..'
alias rof='man -l'
alias top='htop'
alias when='clock -cs'

#Long Alias
alias cld='dialog --title "Calenadar" --calendar "" 0 0'
alias power="upower -i /org/freedesktop/UPower/devices/battery_BAT0"
alias wttr='curl wttr.in'
