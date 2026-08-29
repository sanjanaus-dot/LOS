#!/bin/bash
read -p "Enter a filename: " filename

if [ -e "$filename" ]
then
    echo "File exixts"
else
    echo "File does not exists"
fi
