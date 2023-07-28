#!/bin/bash

############
# Get User #
############

# Pure BASH (Does not work for sudo.)
#: \\u
#printf '%s\n' "${_@P}"

echo "${SUDO_USER:-$(logname)}"
