#!/bin/bash
function main_loop() {
for i in "${!arr[@]}"; do
    printf '%s\n' "${arr[i]}"
done
}
