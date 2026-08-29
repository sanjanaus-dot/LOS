#!/bin/bash

# Prompt the user to enter a filename
read -p "Enter the filename to check: " FILE

# Check if the user entered an empty string
if [ -z "$FILE" ]; then
    echo "Error: No filename entered."
    exit 1
fi

# 1. Check whether the file exists
if [ ! -e "$FILE" ]; then
    echo "File '$FILE' does not exist."
    exit 0
fi

# 2. Check whether it is a regular file
if [ ! -f "$FILE" ]; then
    echo "File '$FILE' exists, but it is not a regular file."
    exit 0
fi

echo "File '$FILE' exists and is a regular file."

# 3. Check whether it is executable
if [ -x "$FILE" ]; then
    echo "File '$FILE' is executable."
    
    # 4. If executable, search for the word 'wget' inside the file
    if grep -q "wget" "$FILE"; then
        echo "Search result: 'wget' was found inside '$FILE'."
    else
        echo "Search result: 'wget' was NOT found inside '$FILE'."
    fi
else
    echo "File '$FILE' is not executable. Skipping 'wget' search."
fi
