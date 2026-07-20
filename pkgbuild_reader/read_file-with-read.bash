#!/bin/bash
# Bash <4 (discarding empty lines).
function read_file-with-read()
{

IFS=$'\n' read -d "" -ra file_data < "file"

# Bash <4 (preserving empty lines).
while read -r line; do
    file_data+=("$line")
done < "file"

# Bash 4+
mapfile -t file_data < "file"
}
