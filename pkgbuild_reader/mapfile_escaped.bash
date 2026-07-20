#!/bin/bash

# 1. Define the callback function
escape_callback() {
    local index=$1
    local line=$2
    
    # Escape the string and assign it to the 'lines' array
    printf -v "lines[$index]" "%Q" "$line"
}

# 2. Call mapfile with the callback
# -C specifies the callback function
# -c 1 triggers the callback on every single line (interval of 1)
# -t removes trailing newlines before processing
mapfile -t -C escape_callback -c 1 < "your_file.txt"

# 3. View the escaped array
printf "%s\n" "${lines[@]}"
