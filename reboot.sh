#!/bin/bash

ratpoison -c "echo reboot"
sleep 1
systemctl reboot
