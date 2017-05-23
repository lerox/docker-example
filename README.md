# docker-example

A functional docker example.

## Set up

```
$ cd ~/workingspace/
$ git clone git@github.com:lerox/docker-example.git
$ cd docker-example/
```

```bash
# /etc/hosts
# ...
192.168.99.100  docker-example.dev # usually 127.0.0.1
# ...
```

```bash
# Create your own docker-compose file, or just:
$ cp docker-compose.yml.dist docker-compose.yml
```

```bash
$ docker-machine env # 4 mac users
```

```bash
$ docker volume create --name=actual-name-of-volume
$ docker-compose build
$ docker-compose up
```

```bash
# 4 mac users
$ docher-machine ssh your-machine-name
# ...
boot2docker@vbox-test:~$ sudo sysctl -w vm.max_map_count=262144
```

```bash
# And then:
$ ./env.sh
```

## Endpoints:

http://docker-example.dev:8080/ *Will run a set up check

http://docker-example.dev:15672/#/queues *guest guest to login

http://docker-example.dev:5601/app/kibana#/discover?_g=() *Time-field name: @timestamp
