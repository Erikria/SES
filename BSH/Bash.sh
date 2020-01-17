#Linux "~/.bashrc": executed by BASH for non-login shells.
#Examples in "/usr/share/doc/bash/examples/startup-files" (from package "bash-doc")

#If not running interactively, do nothing.
case $- in
	*i*) ;;
	*) return;;
esac

#Don't put duplicate lines or lines starting with space in the history.
#See bash(1) for more options
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

#Append to the history file, don't overwrite it
shopt -s histappend

#Check the window size after each command and, if necessary, update the values of LINES and COLUMNS.
shopt -s checkwinsize

#If set, the pattern "**" used in a pathname expansion context will match all files and zero or more directories and subdirectories.
shopt -s globstar

#Make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

#Set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ];
then
	debian_chroot=$(cat /etc/debian_chroot)
fi

#Set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
	xterm-color|*-256color) color_prompt=yes;;
esac

#Colored prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ];
then
	if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null;
	then
		#We have color support; assume it's compliant with Ecma-48(ISO/IEC-6429).
		color_prompt=yes
	else
		color_prompt=no
	fi
fi

if [ "$color_prompt" = yes ];
then
	PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
	PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

#If this is an xterm set the title to "user@host:dir"
case "$TERM" in
xterm*|rxvt*)
	PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
	;;
*)
	;;
esac

#Enable color support of `ls` and also add handy aliases
if [ -x /usr/bin/dircolors ];
then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls='ls --color=auto'
	alias dir='dir --color=auto'
	alias vdir='vdir --color=auto'
	alias grep='grep --color=auto'
	alias egrep='egrep --color=auto'
	alias fgrep='fgrep --color=auto'
fi

#Special Variables
#Colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

#export PATH=$PATH:$NeoPATH
export GOPATH="$HOME/.local/golang/local"
export GOPROXY="https://goproxy.io"
export GOROOT="$HOME/.local/golang"
export PERLLIB="$HOME/.local/share/perl"
export PERL5LIB="$HOME/.local/share/perl"

export PAGER=less
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

#Colored Manpages
export LESS_TERMCAP_mb=$'\E[01;36m'
export LESS_TERMCAP_md=$'\E[01;36m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;34m'

#Alias definitions.
#Special Alias
alias cdc='cd ~/Documents/DOC/'
alias cdl='cd ~/Downloads/'
alias cdp='cd ..'
alias cgt='cd ~/Public/OSE/'
alias cmk='cd ~/Documents/MKD/'
alias ctx='cd ~/Public/TEX/'

alias gad='git add'
alias gcl='git clone'
alias gcm='git commit -m'
alias gph='git push'
alias gpl='git pull'

#Python
alias py='python3.5'
alias py2='python'
alias py3='python3'
alias pyp='pip install --user --timeout 3600'

#Common Alias
alias la='ls -A'
alias ll='ls -lA'
alias rof='man -l'
alias su='sudo -i'
alias sus='sudo -s'
alias top='htop'
alias when='clock -cs'

#Long Alias
alias cld='dialog --title "Calenadar" --calendar "" 0 0'
alias cln='time . ~/.config/Purge.sh'
alias csv='column -t -s ","'
alias power='upower -i /org/freedesktop/UPower/devices/battery_BAT0'
alias wttr='curl wttr.in'
alias tika='java -jar /opt/APP/Cargo/Tika.jar'

#You may put all your additions into a separate file like "~/.bash_aliases", instead of adding them here directly. See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ];
then
	. ~/.bash_aliases
fi

#Enable programmable completion features
if ! shopt -oq posix;
then
	if [ -f /usr/share/bash-completion/bash_completion ];
	then
		. /usr/share/bash-completion/bash_completion
	elif [ -f /etc/bash_completion ];
	then
		. /etc/bash_completion
	fi
fi
