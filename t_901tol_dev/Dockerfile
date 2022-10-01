FROM ubuntu:latest
WORKDIR /usr/src/devtools

RUN ["apt-get", "update"]
# Install git.
RUN ["apt-get", "install", "-y", "git"]
# Install docker.
# RUN ["apt-get", "install", "-y", "docker"]
# Install vim.
RUN ["apt-get", "install", "-y", "vim"]
# Install make.
RUN ["apt-get", "install", "-y", "make"]


# RUN apt-get update && apt-get install -y git

# FROM golang:latest
# RUN apt-get update
# RUN apt-get install -y iputils-ping net-tools postgresql-client
# ENV PGPASSWORD ${PGSQL_PW}
# RUN mkdir /go/src/work
# WORKDIR /go/src/work
# # ADD . /go/src/work