#!/bin/bash

# Check if file exists
if [ ! -e "$1" ]; then
    echo "File does not exist."
    exit 1
fi

# Check if it is a regular file
if [ ! -f "$1" ]; then
    echo "Not a regular file."
    exit 1
fi

# Check if it is readable
if [ ! -r "$1" ]; then
    echo "File is not readable."
    exit 1
fi

# Check if it is non-empty
if [ ! -s "$1" ]; then
    echo "File is empty."
    exit 1
fi

# Search for "wget"
if grep -q "wget" "$1"; then
    echo "Selected indicator detected – investigate further"
else
    echo "Selected indicator not detected"
fi
