#!/bin/bash

#####
#	Usage
#	Parameters:
#		- file
#		- directory
#		- password
#####

echo $1
echo $2
echo $3

ftp-upload -h 172.31.1.67 -u Jan --password $3 -d $2 $1
