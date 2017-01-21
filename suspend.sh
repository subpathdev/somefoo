#!/bin/bash

ratpoison -c "echo suspend"
sleep 1
i3lock -c 000000
suspend
