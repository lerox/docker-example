#!/bin/bash
# Set up the env

docker exec -u root -i pocdocker_php_1 sh -c 'chmod +x /src/teste.sh'
docker exec -i pocdocker_php_1 sh -c 'cd /src/ && /src/teste.sh'
