#!/bin/bash

# This script demonstrates a corrected approach to process a list of files,
# handling filenames with spaces and special characters correctly.

files=(*.txt *.log)

for file in "${files[@]}"; do
  echo "Processing: $file"
  # ... further processing of the file ...
  if [[ -f "$file" ]]; then
    echo "File exists: $file"
    # Use safer methods for commands that use the filename
    grep "error" "$file" >> errors.log
  else
    echo "File does not exist: $file"
  fi
done