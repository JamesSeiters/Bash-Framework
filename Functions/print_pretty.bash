#!/bin/bash

#####################
# BASH Print Pretty #
#####################


# Checks the first argument to determine what pattern to use. If the first argument is an error, warning, or default, then use that pattern.
# If the first argument is an empty string, then use the default pattern. Otherwise, return an error..
print_pretty() {
    # Defaults
    local red="\e[38;2;255;0;0m"
    local yellow="\e[38;2;255;255;0m"
    local nc="\e[0m"
    local default_pattern='\n%s\n'
    local error_pattern="\n${red}Error\x21${nc}\x20%s\n\n"
    local warning_pattern="\n${yellow}Warning\x21${nc}\x20%s\n\n"

    if [[ $1 == "error" ]]; then
        printf "$error_pattern" "$2"
    elif [[ $1 == "warning" ]]; then
        printf "$warning_pattern" "$2"
    else
        printf "$default_pattern" "$2"
    fi
}
