#!/bin/bash

#######################################################################
# BASH Print Pretty                                                   #
# Purpose: Prints colorized messages to the terminal.                 #
# Inputs: $1 - The type of message to print. $2 - The message itself. #
# Output : None.                                                       #
# Version: 0.0.1                                                      #
# Date: 2023-27-07                                                    #
#######################################################################

# Checks the first argument to determine what pattern to use. If the first argument is error or warning then use that pattern.
# If the first argument is an empty string, then use the default pattern. Otherwise, return an error..
print_pretty() {
	# Defaults
	local red="\e[38;2;255;0;0m"
	local yellow="\e[38;2;255;255;0m"
	local nc="\e[0m"
	local default_pattern='%s\n'
	local error_pattern="${red}Error\x21${nc}\x20%s\n\n"
	local warning_pattern="${yellow}Warning\x21${nc}\x20%s\n\n"
	local wait_pattern='%s\u2026'

	case "$1" in
		"error" )
			local pattern="$error_pattern"
			shift
		;;
		"warning" )
			local pattern="$warning_pattern"
			shift
		;;
		"wait" )
			local pattern="$wait_pattern"
			shift
		;;
		* )
			local pattern="$default_pattern"
		;;
	esac

	printf "$pattern" "$1"
}
