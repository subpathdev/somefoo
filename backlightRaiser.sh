#!/bin/bash
xbacklight +10
ratpoison -c "echo backlight: $(xbacklight)"
