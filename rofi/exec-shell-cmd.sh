#!/bin/sh

if [ -z "$1" ]; then
	exit
fi


gnome-terminal -e "$HOME/.i3/rofi/term-cmd.sh \"$1\""
