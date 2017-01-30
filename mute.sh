#!/bin/bash

current_state=$(amixer -c PCH get Master | egrep 'Playback.*?\[o' | egrep -o '\[o.+\]')

if [ $current_state == '[on]' ]; then 
		amixer -c PCH set Master mute
		ratpoison -c "echo mute"
		exit 0
fi
	
		amixer -c PCH set Master unmute
		amixer -c PCH set Speaker unmute
		amixer -c PCH set Headphone unmute
		ratpoison -c "echo unmute"
