#!/bin/bash


function check_file {
  if [ -f "$1" ]; then
    echo "$1 exists."
    # return 0  # Success
  else
    echo "$1 does not exist."
    # return 1  # Error
  fi
}

check_file "/workspaces/Bootcamp-class-2024/country.sh"
echo "Return status: $?"
