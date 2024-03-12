#!/bin/bash

echo "Starting script..."
case $1 in
  start)
    echo "Starting the service..."
    ;;
  stop)
    echo "Stopping the service..."
    ;;
  restart)
    echo "Restarting the service..."
    ;;
  *)
    echo "Usage: $0 {start|stop|restart}"
    ;;
esac


# #!/bin/bash
# echo " Switch case starts"
# case $1 in
#         start)
#         echo "sonarQube server starting"
#         echo "sonarQube server started" ;;
#         stop)
#         echo "sonarQube server stopping"
#         echo "sonarQube server stopped" ;;
#         restart)
#         echo "sonarQube server restarting"
#         echo "sonarQube server restarted" ;;
#         *)
#         echo "you entered an invalid option"
#         echo "Please enter start, stop or restart option" ;;
# esac
# echo " switch case ends"
