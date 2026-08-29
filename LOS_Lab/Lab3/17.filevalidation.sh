#!/bin/bash

# Prompt the user for a filename
read -p "Enter the filename to validate: " file

# Print a blank line for clean formatting
echo ""
echo "Validating File: $file"
echo "---------------------------------"

# 1. Check if the file exists
if [ -e "$file" ]; then
    echo "1. Exists       : Yes"
else
    echo "1. Exists       : No (Stopping validation)"
    exit 1
fi

# 2. Check if it is a regular file (not a directory or link)
if [ -f "$file" ]; then
    echo "2. Regular File : Yes"
else
    echo "2. Regular File : No"
fi

# 3. Check if the file is readable
if [ -r "$file" ]; then
    echo "3. Readable     : Yes"
else
    echo "3. Readable     : No"
fi

# 4. Check if the file is non-empty (size > 0 bytes)
if [ -s "$file" ]; then
    echo "4. Non-empty    : Yes"
else
    echo "4. Non-empty    : No (File is empty)"
fi
