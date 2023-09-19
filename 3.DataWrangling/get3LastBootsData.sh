#!/usr/bin/env bash

for i in {0..2}; do
    journalctl --boot=-$i >> last3bootsdata.txt;
done

