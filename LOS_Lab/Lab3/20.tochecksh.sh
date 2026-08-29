#!/bin/bash

filename="$1"

if [[ "$filename" =~ \.sh$ ]]; then
    echo "Shell script identified for inspection"
else
    echo "File does not have a .sh extension"
fi
