#!/usr/bin/env bash

sudo apt remove --purge -y \
curl \
git \
docker-ce \
python python3 python3.8

# cleanup
sudo apt autoremove -y && sudo apt autoclean -y
