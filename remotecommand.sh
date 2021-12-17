#!/bin/bash
#Script for remote command execution on servers  
echo enter command
read command
echo enter server adress
read server
for h in $server; do
  if ssh production@$h $command; then
    echo "$h true"
  else
    echo "$h false"
  fi
done
