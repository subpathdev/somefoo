#!/bin/bash

amixer -c PCH  set Master 10+
status=$(amixer -c PCH get Master | grep -e "Mono:\ Playback")
status=$(echo $status | egrep -o '\[.+%\]')
ratpoison -c "echo audio: $status "
