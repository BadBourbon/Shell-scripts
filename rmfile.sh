#!/bin/bash
#Deleting files from the home folder with a specific name or by entering the * character, deleting files that start with -
echo "enter file name"
read fn
  if [ "$fn" == "*" ]; then
    find /home -type f -name -\* -exec sudo rm -f {} \;
  else
    sudo rm -f /home/$fn
  fi
