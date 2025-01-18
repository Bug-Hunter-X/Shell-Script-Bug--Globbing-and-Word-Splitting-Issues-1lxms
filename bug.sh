#!/bin/bash

# This script attempts to process a list of files,
# but it has a subtle bug related to globbing and word splitting.

files="*.txt *.log"

for file in $files; do
  echo "Processing: $file"
  # ... further processing of the file ...
  if [[ -f "$file" ]]; then
    echo "File exists: $file"
  else
    echo "File does not exist: $file"
  fi
  # This is prone to errors if filenames contain spaces or special chars
  grep "error" "$file" >> errors.log
done