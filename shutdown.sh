#!/bin/bash

ratpoison -c "echo shutdown"
sleep 1
systemctl poweroff
