#!/bin/bash

####################################################
# Get User Framework Function                      #
# Purpose: Get the user who is running the script. #
# Inputs : None.                                   #
# Outputs: Logged in user's name.                  #
# Version: 0.0.1                                   #
# Date   : 2023-27-07                              #
####################################################

get_user() {
    echo "${SUDO_USER:-$(logname)}"
}
