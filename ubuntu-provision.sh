#!/usr/bin/env bash

sudo apt update && sudo apt upgrade -y


#
# Docker
#

# prerequisite packages
sudo apt install -y \
apt-transport-https \
ca-certificates \
curl \
software-properties-common
# GPG key for the official Docker repository
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# add Docker repository to APT
sudo add-apt-repository -y \
"deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

sudo apt update && sudo apt install docker-ce -y

# check Docker daemon
sudo systemctl status docker
# add current ${USER} to the docker group
sudo usermod -aG docker ${USER}
