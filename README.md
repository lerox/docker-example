# docker-example

Create your own docker-compose file, or just:
```bash
$ cp docker-compose.yml.dist docker-compose.yml
```

```bash
$ docker-machine env # 4 mac users
```

```
$ docker volume create --name=actual-name-of-volume
$ docker-compose build
$ docker-compose up
```

```bash
# /etc/hosts
# ...
192.168.99.100	docker-example.dev # usually 127.0.0.1
# ...
```

Set up

```bash
$ ./env.sh
```

# Endpoints:

http://docker-example.dev:8080/ *Will run a set up check

http://docker-example.dev:15672/#/queues

http://docker-example.dev:5601/app/kibana
