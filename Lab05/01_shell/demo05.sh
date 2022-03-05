#!/bin/sh
while true
 do
    curl -v ifconfig.me
    echo "=========="
    echo "$(date '+%Y-%m-%d %H:%M:%S')"
    echo "=========="

    sleep 5
done


