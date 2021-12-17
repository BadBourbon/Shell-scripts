#!/bin/bash
cat /etc/passwd | grep -i 'www-data' | cut -d: -f 7 -s
