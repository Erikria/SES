#!/usr/bin/env bash

# Choose the colors that will be used from the above list
blue="\033[0;34m"
brightblue="\033[1;34m"
cyan="\033[0;36m"
brightcyan="\033[1;36m"
green="\033[0;32m"
brightgreen="\033[1;32m"
red="\033[0;31m"
brightred="\033[1;31m"
white="\033[1;37m"
black="\033[0;30m"
grey="\033[0;37m"
darkgrey="\033[1;30m"
colors=($green $brightgreen)

#The likelihood of a character being left in place
spacing=${1:-100}
#0 for static, positive integer determines scroll speed
scroll=${2:-0}
screenlines=$(expr `tput lines` - 1 + $scroll)
screencols=$(expr `tput cols` / 2 - 1)

chars=(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z 0 1 2 3 4 5 6 7 8 9)

count=${#chars[@]}
colorcount=${#colors[@]}

trap "tput sgr0; clear; exit" SIGTERM SIGINT;

if [[ $1 =~ '-h' ]];
then
	echo "Display a Matrix(ish) screen in the terminal"
	echo "Usage:\tmatrix [SPACING [SCROLL]]"
	echo "Example:\tmatrix 100 0"
	exit 0
fi

clear
tput cup 0 0;

while :
do for i in $(eval echo {1..$screenlines})
	do for i in $(eval echo {1..$screencols})
		do rand=$(($RANDOM%$spacing))
			case $rand in
				0)
					printf "${colors[$RANDOM%$colorcount]}${chars[$RANDOM%$count]}";;
				1)
					printf " ";;
				*)
					printf "\033[2C";;
			esac
		done
		printf "\n"
		sleep 0.1;
	done
	tput cup 0 0;
done
