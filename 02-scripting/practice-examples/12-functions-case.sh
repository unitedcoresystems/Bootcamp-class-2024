#!/bin/bash


# Function to start the web server
start_server() {
  echo "Starting web server..."
  sudo systemctl start httpd
  echo "Web server started successfully."
}

# Function to stop the web server
stop_server() {
  echo "Stopping web server..."
  sudo systemctl stop httpd
  echo "Web server stopped successfully."
}

# Function to check the status of the web server
status_server() {
  echo "Checking web server status..."
  systemctl status httpd
}

# Main script logic that parses command-line arguments
case "$1" in
  start)
    start_server
    ;;
  stop)
    stop_server
    ;;
  status)
    status_server
    ;;
  *)
    echo "Usage: $0 {start|stop|status}"
    exit 1
    ;;
esac