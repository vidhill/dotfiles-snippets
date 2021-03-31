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

### Using telnet to check a port is open on a host
Connect to host `neverssl.com` on port `80`
```bash
telnet neverssl.com 80
```
Attempting to connect to a non open port `2020`
```bash
telnet neverssl.com 2020
```
 - will just hang

### Using netcat to check a port is open on a host
Probe host `neverssl.com` on port `80`
```bash
nc -zvw3 neverssl.com 80
```
Attempting to probe a non open port `2020`
```bash
nc -zvw3 neverssl.com 2020
```
 - will hang and eventually time out


https://github.com/sindresorhus/fkill-cli


