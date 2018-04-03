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

https://github.com/sindresorhus/fkill-cli


