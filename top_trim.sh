#!/bin/bash

# Script Name: top_trim.sh
# Author: Oleksii Kyrychenko
# Group: IO-25
# V = 2513 % 6 = 5

# Default number of lines
n=${1:-5}

# Check if n is a number
if ! [[ "$n" =~ ^[0-9]+$ ]]; then
  echo "Error: n must be a number."
  exit 1
fi

# Run the "top" utility and redirect output to the file "top_output.txt"
top -b -n 1 > top_output.txt

# Trim to the first n lines and save to the file "top_trimmed.txt"
head -n "$n" top_output.txt > top_trimmed.txt

# Output the result to the screen
cat top_trimmed.txt
