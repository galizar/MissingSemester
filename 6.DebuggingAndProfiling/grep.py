#!/usr/bin/env python

import sys, re

# compiling the regex on each iteration
#def grep(pattern, file):
#    with open(file, 'r') as f:
#        print(file)
#        for i, line in enumerate(f.readlines()):
#            pattern = re.compile(pattern)
#            match = pattern.search(line)
#            if match is not None:
#                print("{}: {}".format(i, line), end="")

# compiling regex only once
def grep(pattern, file):
    with open(file, 'r') as f:
        print(file)
        pattern = re.compile(pattern)
        for i, line in enumerate(f.readlines()):
            match = pattern.search(line)
            if match is not None:
                print("{}: {}".format(i, line), end="")

if __name__ == '__main__':
    times = int(sys.argv[1])
    pattern = sys.argv[2]
    for i in range(times):
        for file in sys.argv[3:]:
            grep(pattern, file)

# quick benchmark: python -m cProfile -s tottime grep.py 1000 '^(import|\s*def)[^,]*$' *.py

