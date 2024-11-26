#!/bin/bash

# Check if the user provided the text as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 'Your text here'"
  exit 1
fi

# Get the current date in YYYY-MM-DD format
current_date=$(date +%Y-%m-%d)

# Define the filename using the input text
input_text=$(echo "$1" | tr ' ' '-')  # Replace spaces with hyphens
filename="${current_date}-${input_text}.md"

# Write the provided text to the file
echo "$1" > "$filename"

# Confirm the file creation
echo "File '$filename' created with the following content:"
cat "$filename"