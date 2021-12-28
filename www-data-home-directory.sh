#!/bin/bash
#Displaying the home directory for the www user
cat /etc/passwd | grep -i 'www-data' | cut -d: -f 7 -s
