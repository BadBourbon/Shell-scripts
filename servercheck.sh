#!/bin/bash
#Script for getting a list of domain records A and checking the availability of servers
Script for getting a list of A records and checking the availability of servers
echo enter domain name
read i
A=$(dig $i -t A +short)
for h in $A; do
  result=$(ping -c 2 -W  1 -q  $h | grep transmitted)
  pattern="0 received";
  if [[ $result =~ $pattern ]]; then
    echo "$h is down"
  fi
done
