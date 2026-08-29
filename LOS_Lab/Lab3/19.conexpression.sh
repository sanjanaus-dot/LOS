#!/bin/bash

filename="$1"

if [[ -f "$filename" ]]; then
    echo "File exists and is a regular file."
else
    echo "File does not exist or is not a regular file."
fi
