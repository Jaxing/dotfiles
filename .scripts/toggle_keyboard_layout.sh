#!/bin/bash

var1="setxkbmap -query" 
$var1 > current_layout.txt
if  grep -Fwq "us" current_layout.txt ; then
	notify-send "Keyboard Layout" "Keyboard layout set to Swedish"
	`setxkbmap se`
else
	notify-send "Keyboard Layout" "Keyboard layout set to US"
	`setxkbmap us`
fi
