#!/bin/bash

# Directory input and validate
if [ $# -ne 1 ]; then
    echo "Syntax Error: $0 <Folder-path> -> Please provide a directory path."
    exit 1
fi

target_dir="$1"

if [ ! -d "$target_dir" ]; then
    echo "Error: Directory '$target_dir' does not exist."
    exit 1
fi

echo "Folders:"
# List folders
find "$target_dir" -maxdepth 1 -type d ! -path "$target_dir" -exec basename {} \; | while read dir; do #remove maxdepth to list all subdirectories
    echo "  $dir/"
done

echo -e "\nFiles:"
# List files
find "$target_dir" -maxdepth 1 -type f -exec basename {} \; | while read file; do #remove maxdepth to list all files in subdirectories
    echo "  $file"
done