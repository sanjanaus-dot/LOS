#!/bin/bash

# Check if config.conf exists, is a regular file, is readable, and is not empty
if [ -f "config.conf" ] && [ -r "config.conf" ] && [ -s "config.conf" ]; then
    echo "config.conf exists, is readable, and is not empty."

    # Search for password or username
    echo -e "\nMatching lines:"
    grep -E "password|username" config.conf
else
    echo "Error: config.conf does not exist, is not readable, or is empty."
fi
