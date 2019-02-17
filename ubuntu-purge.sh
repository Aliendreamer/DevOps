#!/usr/bin/env bash

sudo apt remove --purge curl git docker-ce python python3.8 oracle-java11-installer oracle-java11-set-default


# cleanup
sudo apt autoremove -y && sudo apt autoclean -y
