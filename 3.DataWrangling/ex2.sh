#!/usr/bin/env bash

# getting words that contain three `a`s and that don't have a `'s` ending
cat /usr/share/dict/words \
  | tr -d -c 'a\n' \
  | awk '{ print length; }' \
  | tr -d '012\n' \
  | awk '{ print length; }'

