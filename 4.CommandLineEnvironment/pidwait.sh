#!/usr/bin/env bash

#sleep 60 &
#wait $!
#ls

#pidwait() {
#    if [[ $@ -eq 0 ]]; then
#        echo "No PID received"
#        exit 1
#    fi
#
#    wait $1
#    # check for -1 return code on wait, i.e., an error
#    if [[ $? -eq 0 ]]; then
#        printf "Process PID: %s has completed\n" "$1"
#    fi
#}

pidwait() {
    if [[ $# -eq 0 ]]; then
        echo "No PID received"
        exit 1
    fi

    while kill -0 "$1" 2> /dev/null; do
        sleep 1
    done

    printf "Process PID: %s has completed\n" "$1"
}

pidwait $1

