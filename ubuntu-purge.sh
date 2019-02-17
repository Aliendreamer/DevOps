#!/usr/bin/env bash

sudo apt remove --purge -y docker-ce python3.8 oracle-java11-installer


# cleanup
sudo apt autoremove -y && sudo apt autoclean -y
