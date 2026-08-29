#!/bin/bash

# Prompt the user for a filename
read -p "Enter the filename to check: " file

# Check if the file actually exists before checking its size
if [ ! -e "$file" ]; then
    echo "Error: File '$file' does not exist."
    exit 1
fi

# Print a blank line for clean formatting
echo ""
echo "File: $file"

# Check if the file contains data (size > 0 bytes)
if [ -s "$file" ]; then
    echo "File contains data"
else
    echo "File is empty"
fi
