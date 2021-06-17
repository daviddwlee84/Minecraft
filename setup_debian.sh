#!/bin/bash
# Get Java (This can't work for 1.17, need newer version)
sudo apt install -y openjdk-8-jdk
# Get Minecraft Server 1.16.5
# wget https://launcher.mojang.com/v1/objects/1b557e7b033b583cd9f66746b7a9ab1ec1673ced/server.jar -P JavaServer
# Get Minecraft Server 1.17
wget https://launcher.mojang.com/v1/objects/0a269b5f2c5b93b1712d0f5dc43b6182b9ab254e/server.jar -P JavaServer

# Get GitHub CLI
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
sudo apt-add-repository https://cli.github.com/packages
sudo apt update
sudo apt install gh
