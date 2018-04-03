
### Network

```bash
		# ports open  by what
netstat -tupln # process running on port
```

```bash
# what is running on specific port
sudo fuser -v -n tcp 8443
```

```bash
# PID and command for process on port
MYPID=`sudo fuser -n tcp 8443 | awk '{ print $1 }'` && ps -ef | grep $MYPID | grep -v grep
```

### Docker

```bash
docker rm $(docker ps -a -q) # remove all containers not runnning
```


```bash
# remove all 'dangling' images
docker rmi $(docker images -f dangling=true -q) 
```



```bash
docker exec -i -t $(docker ps -f ancestor=topic --format "{{.ID}}") /bin/bash

docker stop $(docker ps -f ancestor=register --format "{{.ID}}")

```



```bash


```

```bash

```







