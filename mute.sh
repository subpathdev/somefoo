#!/bin/bash

current_state=$(amixer get Master | egrep 'Playback.*?\[o' | egrep -o '\[o.+\]')

if [ $current_state == '[on]' ]; then 
		amixer set Master mute
		ratpoison -c "echo mute"
else
		amixer set Master unmute
		amixer set Speaker unmute
		amixer set Headphone unmute
		ratpoison -c "echo unmute"
fi
