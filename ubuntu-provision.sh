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
#sudo apt install -y git

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
# Java 11 Oracle
#
sudo add-apt-repository -y ppa:linuxuprising/java
sudo apt update
echo oracle-java11-installer shared/accepted-oracle-licence-v1-2 boolean true | sudo /usr/bin/debconf-set-selections
sudo apt install -y oracle-java11-set-default

#sudo nano /etc/environment
#JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64/bin/"
#source /etc/environment
#echo $JAVA_HOME

#
# NodeJS
#
sudo curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash

# cleanup
sudo apt autoremove -y && sudo apt autoclean -y
