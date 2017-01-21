#!/bin/bash

amixer set Master 10+
status=$(amixer get Master | grep -e "Mono:\ Playback")
status=$(echo $status | egrep -o '\[.+%\]')
ratpoison -c "echo audio: $status "
