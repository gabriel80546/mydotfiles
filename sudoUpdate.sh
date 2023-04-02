#!/usr/bin/env bash

# chatGPT3: comando bash dentro do script que mostra toda linha de comando que é executada?
PS4='+ $(date "+%Y-%m-%d %T") $BASH_SOURCE:$LINENO: '
set -x

# Seu script aqui
# echo "Hello, world!"
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade
sudo dpkg --audit
sudo sudo dpkg --configure -a
sudo snap refresh
sudo dpkg --verify

