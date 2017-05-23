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

```
# 4 mac users
$ docher-machine ssh your-machine-name
                        ##         .
                  ## ## ##        ==
               ## ## ## ## ##    ===
           /"""""""""""""""""\___/ ===
      ~~~ {~~ ~~~~ ~~~ ~~~~ ~~~ ~ /  ===- ~~~
           \______ o           __/
             \    \         __/
              \____\_______/
 _                 _   ____     _            _
| |__   ___   ___ | |_|___ \ __| | ___   ___| | _____ _ __
| '_ \ / _ \ / _ \| __| __) / _` |/ _ \ / __| |/ / _ \ '__|
| |_) | (_) | (_) | |_ / __/ (_| | (_) | (__|   <  __/ |
|_.__/ \___/ \___/ \__|_____\__,_|\___/ \___|_|\_\___|_|
# ...
docker@vbox-test:~$ sudo sysctl -w vm.max_map_count=262144
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
