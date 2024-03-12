#!/bin/bash

package_manager() {
  local action=$1    # install, remove, or update
  local package=$2   # package name(s) to install or remove
  local pm=""        # package manager

  # Detect package manager
  if command -v apt > /dev/null; then
    pm="apt"
  elif command -v dnf > /dev/null; then
    pm="dnf"
  elif command -v yum > /dev/null; then
    pm="yum"
  else
    echo "Unsupported package manager."
    return 1
  fi

  # Perform the requested action
  case $action in
    install)
      echo "Installing $package..."
      sudo $pm install $package -y
      ;;
    remove)
      echo "Removing $package..."
      sudo $pm remove $package -y
      ;;
    update)
      if [ "$pm" == "apt" ]; then
        echo "Updating package lists..."
        sudo apt update -y
        echo "Upgrading packages..."
        sudo apt upgrade -y
      else
        echo "Updating and upgrading packages..."
        sudo $pm update -y && sudo $pm upgrade -y
      fi
      ;;
    *)
      echo "Invalid action: $action"
      echo "Valid actions are install, remove, or update."
      return 1
      ;;
  esac
}

# Example usage:
# package_manager install vim
# package_manager remove vim
# package_manager update

