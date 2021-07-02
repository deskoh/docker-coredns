# coredns server

Runs [CoreDNS](https://coredns.io/) as a [nip.io-like wildcard DNS](https://nip.io/).

## Quick Start

```sh
# Run using docker-compose
docker-compose up

# Run using docker
docker run --name coredns -d \
  -v $(pwd)/zones:/etc/coredns/zones:ro \
  -v $(pwd)/Corefile:/etc/coredns/Corefile:ro \
  -p 53:53/udp -p 53:53 \
  coredns/coredns:1.8.4 -conf /etc/coredns/Corefile
```

## Queries

```sh
# 10.0.0.1
nslookup 10.0.0.1.nip.io 127.0.0.1

# 192.168.1.250
nslookup 192-168-1-250.nip.io 127.0.0.1

# 10.8.0.1
nslookup app.10.8.0.1.nip.io 127.0.0.1

# 116.203.255.68
nslookup app-116-203-255-68.nip.io 127.0.0.1

# 10.0.0.1
nslookup customer1.app.10.0.0.1.nip.io 127.0.0.1

# 127.0.0.1
nslookup customer2-app-127-0-0-1.nip.io 127.0.0.1
nslookup magic.127.0.0.1.nip.io 127.0.0.1
nslookup magic-127-0-0-1.nip.io 127.0.0.1
```
