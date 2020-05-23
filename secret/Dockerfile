# syntax = docker/dockerfile:experimental

FROM alpine

RUN apk add --no-cache openssh-client git
RUN mkdir -p -m 0600 ~/.ssh && ssh-keyscan gitlab.com >> ~/.ssh/known_hosts
RUN --mount=type=secret,id=ssh,target=/root/.ssh/id_rsa git clone git@gitlab.com:onigra/secret-repository.git project
