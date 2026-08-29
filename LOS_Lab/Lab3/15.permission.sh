#!/bin/bash
read -p "Enter the filename to check: " file
if [ ! -e "$file" ]
then 
    echo "Error: File does not exist."
    exit 1
fi

echo ""
echo "File: $file"

if [ -r "$file" ]
then
echo "Readable: Yes"
else
echo "Readable: No"
fi

if [ -w "$file" ]; then
    echo "Writable   : Yes"
else
    echo "Writable   : No"
fi

if [ -x "$file" ]; then
    echo "Executable : Yes"
else
    echo "Executable : No"
fi
