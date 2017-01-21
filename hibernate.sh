#!/bin/bash

ratpoison -c "echo hibernate"
sleep 1
i3lock -c 000000
hibernate
