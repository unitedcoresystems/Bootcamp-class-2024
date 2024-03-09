#!/bin/bash

# Assign a file name to a variable
filename="example.txt"
directoryname="example_dir"

# Check if a file exists
if [ -e "$filename" ]; then
    echo "The file '$filename' exists."
else
    echo "The file '$filename' does not exist."
fi

# Check if a file is a regular file
if [ -f "$filename" ]; then
    echo "The file '$filename' is a regular file."
else
    echo "The file '$filename' is not a regular file or does not exist."
fi

# Check if a file is a directory
if [ -d "$directoryname" ]; then
    echo "The item '$directoryname' is a directory."
else
    echo "The item '$directoryname' is not a directory or does not exist."
fi

# Check if a file is readable
if [ -r "$filename" ]; then
    echo "The file '$filename' is readable."
else
    echo "The file '$filename' is not readable or does not exist."
fi

# Check if a file is writable
if [ -w "$filename" ]; then
    echo "The file '$filename' is writable."
else
    echo "The file '$filename' is not writable or does not exist."
fi

# Check if a file is executable
if [ -x "$filename" ]; then
    echo "The file '$filename' is executable."
else
    echo "The file '$filename' is not executable or does not exist."
fi

# Check if a file has a size greater than zero
if [ -s "$filename" ]; then
    echo "The file '$filename' has a size greater than zero."
else
    echo "The file '$filename' is empty or does not exist."
fi

# Check if a file is a symbolic link
if [ -L "$filename" ]; then
    echo "The file '$filename' is a symbolic link."
else
    echo "The file '$filename' is not a symbolic link or does not exist."
fi
