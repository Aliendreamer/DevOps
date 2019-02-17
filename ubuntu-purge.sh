#!/usr/bin/env bash

sudo apt remove --purge -y oracle-java11-installer


# cleanup
sudo apt autoremove -y && sudo apt autoclean -y
