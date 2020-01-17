# Termux ~/.bashrc
PS1='\[\033[01;35m\]\$\[\033[00m\] '

# Colored Manpages
export LESS_TERMCAP_mb=$'\E[01;36m'
export LESS_TERMCAP_md=$'\E[01;36m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;34m'

#Alias
#Common Alias
alias cbk='cd ~/Baks'
alias cdc='cd ~/Docs'
alias cdp='cd ..'
alias cdl='cd ~/Uget'
alias cgt='cd ~/Perl'

alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'

alias la='ls -A'
alias ll='ls -Ag'
alias ls='ls --color=auto'
alias rof='man -l'

#Special Alias
alias bsd='~/.config/BSD.sh'
alias cln='~/.config/Clean.sh'
alias rtmp='less ~/Temp'
alias when='clock -cS'
alias wtmp='vi ~/Temp'

#Long Alias
alias cld='dialog --title "Calenadar" --calendar "" 0 0'
alias ipm='ifconfig | grep "inet "'
alias map="telnet mapscii.me"
alias wikt="w3m www.wiktionary.org"
alias wttr="curl wttr.in"
