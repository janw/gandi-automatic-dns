#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

schedule=${SCHEDULE:-*/5* * * *}
args=${ADDITIONAL_ARGS:-}
echo "Will run on crob schedule ${schedule}"

if [ ! -z "$args"]; then
    echo "With additional arguments \"${args}\""
fi

echo "${schedule} gad ${args}" > /etc/crontabs/root
exec crond -f -d 8