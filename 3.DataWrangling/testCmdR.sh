#!/usr/bin/env bash

cat /usr/share/dict/words  \
| awk '/(.*a.*){3,}/' \
| sed "/'s/d" \
| awk '{ print substr($0, length()-1) }' \
| sort \
| uniq -c \
| sort -t " " -k 1n \
| tail -n10 \
| R --no-echo -f ./testRStdInPlotting.r

