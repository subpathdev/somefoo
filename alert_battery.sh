#!/bin/bash
status=$(acpi | grep -o [0-9][0-9]*% | grep -o [0-9]*)
bat=$(acpi | grep -o [A-Z][a-z]*argi[a-z]*)
if [ "$bat" == 'Discharging' ]; then 
		if [ "$status" -le 10 ]; then 
				beep $(cat /home/subpath/.skript/bash/music)
				#ratpoison -c "echo battery is low"
		fi
fi
