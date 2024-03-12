#!/bin/bash

file_management() {
  local operation=$1
  shift  # Remove the first argument, leaving only the operation arguments

  case "$operation" in
    create)
      touch "$@"  # Creates one or more files
      ;;
    copy)
      cp "$@"  # Copies file or directory. Requires source and destination paths
      ;;
    move|rename)
      mv "$@"  # Moves/renames file or directory. Requires source and destination paths
      ;;
    delete)
      rm -r "$@"  # Deletes files or directories. Use with caution
      ;;
    mkdir)
      mkdir "$@"  # Creates one or more directories
      ;;
    *)
      echo "Unsupported operation: $operation"
      echo "Supported operations: create, copy, move (or rename), delete, mkdir"
      return 1
      ;;
  esac
}

# Example usage:
# file_management create file1.txt
# file_management copy file1.txt file2.txt
# file_management move file2.txt /path/to/destination/
# file_management delete file1.txt
# file_management mkdir new_directory

