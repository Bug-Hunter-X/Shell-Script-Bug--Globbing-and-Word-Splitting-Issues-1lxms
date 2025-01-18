# Shell Script Bug: Globbing and Word Splitting

This repository demonstrates a common bug in shell scripting related to globbing and word splitting. The script `bug.sh` attempts to process a list of files, but it fails when filenames contain spaces or special characters.  The solution `bugSolution.sh` shows how to correctly handle these cases using arrays or other safer techniques.

## Bug Description
The original script uses improper globbing and word splitting to manage files which leads to unexpected behavior when processing filenames with spaces or special characters. This can cause files to be incorrectly processed or even skipped. 

## Solution
The solution utilizes an array to store filenames, avoiding the problems caused by word splitting.