#!/bin/bash
writefile=$1
writestr=$2

# Check if arguments are provided
if [ -z "$writefile" ] || [ -z "$writestr" ]; then
    echo "Error: Missing arguments"
    exit 1
fi

# Extract directory path
dirpath=$(dirname "$writefile")

# Create directory path if it does not exist
mkdir -p "$dirpath"
if [ $? -ne 0 ]; then
    echo "Error: Could not create directory path"
    exit 1
fi

# Write to file (overwrite if exists)
echo "$writestr" > "$writefile"
if [ $? -ne 0 ]; then
    echo "Error: Could not create or write to file"
    exit 1
fi
exit 0