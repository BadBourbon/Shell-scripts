#!/bin/bash
echo "enter file name"
read fn
  if [ "$fn" == "*" ]; then
    find /home -type f -name -\* -exec sudo rm -f {} \;
  else
    sudo rm -f /home/$fn
  fi