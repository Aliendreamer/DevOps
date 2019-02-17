#!/usr/bin/env bash

sudo apt remove --purge docker-ce oracle-java11-installer


# cleanup
sudo apt autoremove -y && sudo apt autoclean -y
