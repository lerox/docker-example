#!/bin/bash
# Set up the env

docker exec -u root -i php sh -c 'chmod +x /src/up.sh'
docker exec -i php sh -c 'cd /src/ && /src/up.sh'
