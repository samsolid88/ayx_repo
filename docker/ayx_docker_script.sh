#!/bin/bash
clear

# Pull and start a busybox container in detached mode while passing a variable
docker run -it -d \
--name my-container \
-e MY_ENVIRONMENT_VARIABLE=12345var \
busybox:latest \
/bin/sh

# Run a command in the busybox container to print the environment variables
docker exec -it my-container /bin/sh -c "env"

# Stop the Docker Container
echo
echo
echo "Stopping the container"
docker stop my-container

# Remove the container
docker rm my-container

clear
echo "Process completed."
