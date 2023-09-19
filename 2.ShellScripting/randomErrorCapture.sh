#!/usr/bin/env bash

count=0
code=0

while [[ $code -ne 1 ]]; do
    ./randomErrorLoop.sh >> errorLoopLog
    code=$?
    let count=count+1
done

cat errorLoopLog
echo "Found an error after $count iterations!"

