#!/usr/bin/env bash

TARGET_IP=192.168.56.123

ssh $TARGET_IP "top -b -n1 | tee file.txt"
ssh -f $TARGET_IP "netcat -l -p 4321 &"
PIDN=$(ssh $TARGET_IP "lsof -t -i :4321")
nmap $TARGET_IP -p 4321 | grep 4321
ssh $TARGET_IP "kill $PIDN"
nmap $TARGET_IP -p 4321 | grep 4321
