#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

endpoint=${CUSTOM_ENDPOINT:-}
if [ ! -z "$endpoint" ];
then
    echo "Using custom endpoint ${endpoint} for getting IP address"
    exec curl -s4L "${endpoint}" | ./gad -s "$@"
else
    exec /app/gad "$@"
fi
