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







