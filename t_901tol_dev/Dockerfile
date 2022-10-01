FROM ubuntu:latest
WORKDIR /usr/src/dev

RUN ["apt-get", "update"]
# Install git.
RUN ["apt-get", "install", "-y", "git"]
# Install vim.
RUN ["apt-get", "install", "-y", "vim"]
# Install make.
RUN ["apt-get", "install", "-y", "make"]
# Install docker engine.
RUN apt-get update && apt-get install -y \
  curl \
  && rm -rf /var/lib/apt/lists/*

ENV DOCKER_CLIENT_VERSION=1.12.3
ENV DOCKER_API_VERSION=1.24
RUN curl -fsSL https://get.docker.com/builds/Linux/x86_64/docker-${DOCKER_CLIENT_VERSION}.tgz \
  | tar -xzC /usr/local/bin --strip=1 docker/docker


# RUN apt-get update && apt-get install -y git

# FROM golang:latest
# RUN apt-get update
# RUN apt-get install -y iputils-ping net-tools postgresql-client
# ENV PGPASSWORD ${PGSQL_PW}
# RUN mkdir /go/src/work
# WORKDIR /go/src/work
# # ADD . /go/src/work
