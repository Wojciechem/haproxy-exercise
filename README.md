Exercises in HAProxy
---

Small repo to learn in practice

## Setup

```shell
sudo sh -c 'echo "127.0.0.1 tylko0.local" >> /etc/hosts'
sudo sh -c 'echo "127.0.0.1 tylko1.local" >> /etc/hosts'
sudo sh -c 'echo "127.0.0.1 herp.local" >> /etc/hosts'
sudo sh -c 'echo "127.0.0.1 derp.local" >> /etc/hosts'
docker compose build
docker compose up -d
```

## Test
every 4th request should respond with Herp @ k8s-0:
```shell
curl herp.local
```