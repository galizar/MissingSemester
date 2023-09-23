#!/usr/bin/env bash

# extract all data from last 3 boots
#for i in {0..2}; do
#    journalctl --boot=-$i >> /tmp/last3boots.txt;
#done

cat /tmp/last3boots.txt \
| sed -E 's/[a-z]{3}\s[0-9]{2}\s[0-9]{2}:[0-9]{2}:[0-9]{2}/timestamp/' \
| sed -E 's/[0-9]{4}-[0-9]{2}-[0-9]{2}\s[0-9]{2}:[0-9]{2}:[0-9]{2}/obsidian timestamp/' \
| sort \
| uniq -c \
| sort -t " " -k 1n \
| awk '$1 != 3 { print }' 

