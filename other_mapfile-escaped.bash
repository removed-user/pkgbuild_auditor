#!/usr/bin/env bash

# 1. Define the callback function
escape_callback() {
    # $1 = array index, $2 = line content
    local index="$1"
    local content="$2"
    
    # Strip the trailing newline before escaping (simulates mapfile -t)
    content="${content%$'\n'}"
    
    # Escape the string and assign it directly to the target array
    lines[index]="${content@Q}"
}

# 2. Run mapfile with the callback
# -C specifies the callback function
# -c 1 ensures the callback runs for every single line (quantum = 1)
mapfile -C escape_callback -c 1 lines < input.txt

# 3. View the escaped array
printf "%s\n" "${lines[@]}"
