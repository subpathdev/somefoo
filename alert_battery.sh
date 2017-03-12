#!/bin/tcsh

set stat = `acpi | grep -o '\([0-9][0-9]*%\)' | grep -o "\([0-9]*\)"`
set bat = `acpi | grep -o '\([A-Z][a-z]*argi[a-z]*\)'`
if ( $bat == 'Discharging') then 
	if ( $stat < 10 ) then
		#beep `cat /home/subpath/.skript/bash/music`
		ratpoison -c "echo empty battery"
	endif
endif
if ( $stat > 90) then
	ratpoison -c "echo battery is full"
endif
