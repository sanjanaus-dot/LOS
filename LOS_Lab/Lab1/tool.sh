#!/bin/bash

read -p "Enter tool name: " tool

if command -v "$tool" &> /dev/null; then
    echo "$tool is installed."
else
    echo "$tool is NOT installed."
fi

