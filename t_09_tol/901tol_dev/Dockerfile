FROM ubuntu:latest
WORKDIR /usr/src/dev

RUN ["apt-get", "update"]

# Install git.
RUN ["apt-get", "install", "-y", "git"]

# Install vim.
RUN ["apt-get", "install", "-y", "vim"]
# RUN ["apt-get", "install", "-y", "vim-gtk3"]
# RUN ["apt-get", "install", "-y", "vim-gnome"]
# RUN ["apt-get", "install", "-y", "vim-athena"]
# RUN ["apt-get", "install", "-y", "vim-gtk"]
# RUN ["apt-get", "install", "-y", "vim-nox"]
# RUN ["apt-get", "install", "-y", "vim-tiny"]
# RUN ["apt-get", "install", "-y", "vim-gui-common"]
# RUN ["apt-get", "install", "-y", "vim-runtime"]
# RUN ["apt-get", "install", "-y", "vim-common"]
# RUN ["apt-get", "install", "-y", "vim-doc"]
# RUN ["apt-get", "install", "-y", "vim-scripts"]
# RUN ["apt-get", "install", "-y", "vim-addon-manager"]

# Install make.
RUN ["apt-get", "install", "-y", "make"]

# Install psql.
RUN ["apt-get", "install", "-y", "postgresql-client"]
RUN ["apt-get", "install", "-y", "postgresql-client-common"]

# Install docker.
RUN ["apt-get", "install", "-y", "docker.io"]
RUN ["apt-get", "install", "-y", "docker-compose"]
# RUN ["apt-get", "install", "-y", "docker-ce-cli"]
# RUN ["apt-get", "install", "-y", "docker-ce"]
# RUN ["apt-get", "install", "-y", "docker-scan-plugin"]
# RUN ["apt-get", "install", "-y", "docker-ce-rootless-extras"]
# RUN ["apt-get", "install", "-y", "docker-rootless-extras"]

# Install docker engine.
# RUN apt-get update && apt-get install -y \
#   curl \
#   && rm -rf /var/lib/apt/lists/*

# ENV DOCKER_CLIENT_VERSION=1.12.3
# ENV DOCKER_API_VERSION=1.24
# RUN curl -fsSL https://get.docker.com/builds/Linux/x86_64/docker-${DOCKER_CLIENT_VERSION}.tgz \
#   | tar -xzC /usr/local/bin --strip=1 docker/docker


# RUN sudo apt-get update && \
#     sudo apt-get install -y \
#     ca-certificates \
#     curl \
#     gnupg \
#     lsb-release && \
#     curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg && \
#   echo \
#   "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
#   $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null && \
#   sudo apt-get update && \
#   sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

















# RUN apt-get update && apt-get install -y git

# FROM golang:latest
# RUN apt-get update
# RUN apt-get install -y iputils-ping net-tools postgresql-client
# ENV PGPASSWORD ${PGSQL_PW}
# RUN mkdir /go/src/work
# WORKDIR /go/src/work
# # ADD . /go/src/work
