#!/bin/bash

monitoring() {
  echo "Disk Usage:"
  df -h
  echo

  echo "Memory Usage (in MB):"
  free -m
  echo

  echo "Current Processes Snapshot:"
  top -b -n 1
}

