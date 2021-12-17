#!/bin/bash
#Script for remote command execution on servers  
command=$1
server=${@:2}
for h in $server; do
  if ssh $USER@$h $command; then
    echo "$h true"
  else
    echo "$h false"
  fi
done
