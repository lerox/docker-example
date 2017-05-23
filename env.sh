#!/bin/bash
# Set up the env

docker exec -u root -i php sh -c 'chmod +x /src/teste.sh'
docker exec -i php sh -c 'cd /src/ && /src/teste.sh'
