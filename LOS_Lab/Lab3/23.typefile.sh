#!/bin/bash

read -p "Enter the file path: " file

# Check if file is a regular file, readable, and non-empty
if [ -f "$file" ] && [ -r "$file" ] && [ -s "$file" ]; then
    if grep -qE 'wget|curl|nc|chmod' "$file"; then
        echo "One or more selected indicators detected"
    else
        echo "Selected indicators not detected"
    fi
else
    echo "File does not meet the required conditions."
fi
