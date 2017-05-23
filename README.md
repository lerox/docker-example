# README.md - docker-example

```
$ docker-machine env # mac users
```

```
$ docker volume create --name=actual-name-of-volume
$ docker-compose build
$ docker-compose up
```

# DNS

/etc/hosts
```
...
192.168.99.100	docker-example.dev # usually 127.0.0.1
...
```

# Set up

```
$ ./env.sh
```

# Endpoints:

http://docker-example.dev:8080/
http://docker-example.dev:15672/#/queues
http://docker-example.dev:5601/app/kibana

# Notes:

http://docker-example.dev:8080/ Will run a set up check
