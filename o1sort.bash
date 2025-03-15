#!/bin/bash

source sleepUntilHiRes.bash

function f() {
    delay=$(echo "0.9-0.8/$2" | bc -l)
    if [[ $delay == 0 ]]; then
        delay=.0
    fi
    sleepUntilHires -q "${1}${delay}"
    echo "$2"
}

if [ $(date +%S) -gt 57 ]; then
    sleepUntilHires -q $(date +%H):$(( $(date +%M) + 1 ))
fi

base=$(date +%H:%M):$(( $(date +%S) + 2 ))

sleepUntilHires -q $(date +%H:%M):$(( $(date +%S) + 1 ))
while [ -n "$1" ]
do
    f "$base" "$1" &
    shift
done

wait
