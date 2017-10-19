# OMAR Base

## Dockerfile
```
FROM docker-registry-default.ossim.io/o2/omar-ossim-base:latest
MAINTAINER RadiantBlue Technologies radiantblue.com
USER root
RUN yum -y install ossim-jpip-server && yum clean all
USER 1001
COPY ./run.sh $HOME
CMD ./run.sh
```
Ref: [https://github.com/ossimlabs/omar-base](https://github.com/ossimlabs/omar-base)

If the docker file is created then:

`docker build -t ossim-jpip-server:latest .`

## Configuration

Environment variables:
- `JPIP_DATA_DIR`: No default. Must be set.
- `SOURCES`: Defaults to `25`
- `CLIENTs`: Defaults to `25`
- `PORT`: Defaults to `8080`
- `MAX_RATE`: Defaults to `40000000`
- `ADDRESS`: Defaults to `localhost`
- `CONNECTION_THREADS`: Defaults to `100`
