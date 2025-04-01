#!/bin/bash

# Ask for file name
echo "Enter the file name:"
read filename

# Check if file exists
if [ -e "$filename" ]; then
    echo "File '$filename' exists."
else
    echo "File '$filename' does not exist."
fi
