FROM golang:latest
WORKDIR /go/src

# COPY pkgset.sh /usr/local/bin
# CMD pkgset.sh


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

