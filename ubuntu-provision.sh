#!/usr/bin/env bash

sudo apt update && sudo apt upgrade -y

#
# Docker
#
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
#sudo systemctl status docker

# add current ${USER} to the docker group
#sudo usermod -aG docker ${USER}
#su - ${USER}
#id -nG

#
# Git
#
sudo apt install -y git

#
# Python
#
# python v2
#sudo apt install -y python
# python v3
#sudo apt install -y python3
# python newest (3.8)
#sudo apt update && sudo apt install -y software-properties-common
#sudo add-apt-repository -y ppa:deadsnakes/ppa
#sudo apt install -y python3.8

#
# Java 10 Oracle
#
sudo add-apt-repository -y ppa:linuxuprising/java
sudo apt update && sudo apt install -y oracle-java10-installer && echo oracle-java10-installer shared/accepted-oracle-licence-v1-1 boolean true | sudo /usr/bin/debconf-set-selections



#sudo add-apt-repository -y ppa:webupd8team/java


#
# NodeJS
#

# cleanup
sudo apt autoremove -y && sudo apt autoclean -y
