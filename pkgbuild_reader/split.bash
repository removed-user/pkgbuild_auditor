#!/bin/bash

Strip all instances of pattern from string
Example Function:

strip_all() {
    # Usage: strip_all "string" "pattern"
    printf '%s\n' "${1//$2}"
}
Example Usage:

$ strip_all "The Quick Brown Fox" "[aeiou]"
Th Qck Brwn Fx

$ strip_all "The Quick Brown Fox" "[[:space:]]"
TheQuickBrownFox

$ strip_all "The Quick Brown Fox" "Quick "
The Brown Fox
Strip first occurrence of pattern from string
Example Function:

strip() {
    # Usage: strip "string" "pattern"
    printf '%s\n' "${1/$2}"
}
Example Usage:

$ strip "The Quick Brown Fox" "[aeiou]"
Th Quick Brown Fox

$ strip "The Quick Brown Fox" "[[:space:]]"
TheQuick Brown Fox
Strip pattern from start of string
Example Function:

lstrip() {
    # Usage: lstrip "string" "pattern"
    printf '%s\n' "${1##$2}"
}
Example Usage:

$ lstrip "The Quick Brown Fox" "The "
Quick Brown Fox
Strip pattern from end of string
Example Function:

rstrip() {
    # Usage: rstrip "string" "pattern"
    printf '%s\n' "${1%%$2}"
}
Example Usage:

$ rstrip "The Quick Brown Fox" " Fox"
The Quick Brown
