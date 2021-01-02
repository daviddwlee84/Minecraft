#!/bin/bash
# Get Java
sudo apt install -y openjdk-8-jdk
# Get Minecraft Server 1.16.4
wget https://launcher.mojang.com/v1/objects/35139deedbd5182953cf1caa23835da59ca3d7cd/server.jar -P JavaServer

# Get GitHub CLI
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
sudo apt-add-repository https://cli.github.com/packages
sudo apt update
sudo apt install gh