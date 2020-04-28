# mondedie/openssh

![openssh](http://www.openssh.com/images/openssh.gif)

![](https://github.com/mondediefr/docker-openssh/workflows/build/badge.svg)
[![](https://img.shields.io/docker/pulls/mondedie/openssh)](https://hub.docker.com/r/mondedie/openssh)
[![](https://img.shields.io/docker/stars/mondedie/openssh)](https://hub.docker.com/r/mondedie/openssh)

### Tag available

- **latest** [(Dockerfile)](https://github.com/mondediefr/docker-openssh/blob/master/Dockerfile)

### Features

- Multi-platform image: `linux/386`, `linux/amd64`, `linux/arm/v6`, `linux/arm/v7`, `linux/arm64`
- Based on Alpine Linux
- No **ROOT** process

### Ports

- Default: **2222** (configurable)

### Volume

- **/home/${USER}** : Mount this on your home directory
- **/etc/ssh/keys** : To save server keys

### Environment variables

| Variable | Description | Type | Default value |
| -------- | ----------- | ---- | ------------- |
| **UID** | openssh user id | *optional* | 991
| **GID** | openssh user id | *optional* | 991
| **USER** | openssh user name | *optional* | openssh

### Usage

#### Build image

```sh
docker build -t mondedie/openssh:latest https://github.com/mondediefr/docker-openssh.git
```

Run your openssh server

```sh
docker run -it --rm \
  -e UID=1000 \
  -e GID=1000 \
  -e USER=user \
  -v /home/user:/home/user \
  mondedie/openssh:latest
```

## License

Docker image [mondedie/openssh](https://hub.docker.com/r/mondedie/openssh) is released under [MIT License](https://github.com/mondediefr/docker-openssh/blob/master/LICENSE).
