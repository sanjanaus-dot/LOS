#!/bin/bash

# Ask user for filename
read -p "Enter filename: " filename

echo
echo "----- FILE INVESTIGATION -----"
echo

# Initialize variables
exists="No"
regular_file="No"
directory="No"
readable="No"
writable="No"
executable="No"
non_empty="No"
shell_script="No"

# Check if path exists
if [ -e "$filename" ]; then
    exists="Yes"
fi

# Check if it is a regular file
if [ -f "$filename" ]; then
    regular_file="Yes"
fi

# Check if it is a directory
if [ -d "$filename" ]; then
    directory="Yes"
fi

# If it is a regular file, check readability, writability, executability, and non-emptiness
if [ "$regular_file" = "Yes" ]; then
    if [ -r "$filename" ]; then
        readable="Yes"
    fi
    if [ -w "$filename" ]; then
        writable="Yes"
    fi
    if [ -x "$filename" ]; then
        executable="Yes"
    fi
    if [ -s "$filename" ]; then
        non_empty="Yes"
    fi
fi

# Check if filename ends with .sh
if [[ "$filename" =~ \.sh$ ]]; then
    shell_script="Yes"
fi

# Display summary
echo "Exists        : $exists"
echo "Regular File  : $regular_file"
echo "Directory     : $directory"
echo "Readable      : $readable"
echo "Writable      : $writable"
echo "Executable    : $executable"
echo "Non-empty     : $non_empty"
echo "Shell Script  : $shell_script"
echo

# If readable and non-empty, search for wget, wget|curl|nc|chmod, and check success
if [ "$readable" = "Yes" ] && [ "$non_empty" = "Yes" ]; then
    echo "Search for 'wget':"
    grep -q "wget" "$filename"
    if [ $? -eq 0 ]; then
        echo "  -> Found"
    else
        echo "  -> Not found"
    fi

    echo "Search for 'wget|curl|nc|chmod':"
    grep -Eq "wget|curl|nc|chmod" "$filename"
    if [ $? -eq 0 ]; then
        echo "  -> Found"
    else
        echo "  -> Not found"
    fi
fi
