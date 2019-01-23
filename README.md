# docker-socat

## coldstart

```sh

cd ~
curl https://raw.githubusercontent.com/sejnub/docker-socat/master/scripts/coldstart.sh | bash

```

## Tests

```bash

# Fake syslog

# UDP
echo "<14>UDP localhost       514" | nc -v -u -w 0 localhost       514
echo "<15>UDP syslog.internal 514" | nc -v -u -w 0 syslog.internal 514

# TCP
echo "<24>TCP localhost       515" | nc -v    -w 0 localhost       515
echo "<25>TCP syslog.internal 515" | nc -v    -w 0 syslog.internal 515

```

## Tested socat commands

```bash

# Does not work so good
sudo socat -v UDP-LISTEN:514,fork TCP:syslog.internal:515

# nope!
sudo socat -v UDP-RECV:514,fork TCP:syslog.internal:515

# This seems to work great.
sudo socat -v UDP4-RECVFROM:514,fork TCP:syslog.internal:515


```
