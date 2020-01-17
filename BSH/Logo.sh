#!/bin/bash
logo=share/man/man1/Unix.md
if [ -e /usr/local/$logo ];
then
	dialog --textbox /usr/local/$logo 20 60;
	echo "";
else
	if [ -e ../$logo ];
	then
		dialog --textbox ../$logo 20 60;
		echo "";
	else
		echo "Cannot Find Unix Logo!";
	fi
fi
