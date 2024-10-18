### Docker

```bash
$ docker rm $(docker ps -a -q) # remove all containers not runnning
```

```bash
# remove all 'dangling' images
$ docker rmi $(docker images -f dangling=true -q)
```

```bash
$ docker exec -i -t $(docker ps -f ancestor=topic --format "{{.ID}}") /bin/bash

$ docker stop $(docker ps -f ancestor=register --format "{{.ID}}")

```

```bash
# pass the id to docker rm command
$ docker stop 33b53276e458 | xargs docker rm # stops then removes container

```

```bash

```

Add Autocoplete for Docker

```
# mac
brew install bash-completion

# run
cd /usr/local/etc/bash_completion.d
ln -s /Applications/Docker.app/Contents/Resources/etc/docker.bash-completion
ln -s /Applications/Docker.app/Contents/Resources/etc/docker-machine.bash-completion
ln -s /Applications/Docker.app/Contents/Resources/etc/docker-compose.bash-completion
```
