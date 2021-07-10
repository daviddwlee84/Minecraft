#!/bin/bash
# Get Java (This can't work for 1.17, need newer version)
sudo apt install -y openjdk-8-jdk
./download_jdk_17.sh

# Get GitHub CLI
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
sudo apt-add-repository https://cli.github.com/packages
sudo apt update
sudo apt install gh

# Download Server
# We don't need to do this, since we can manage our server by Fabric
# ./download_server.sh

# Install Fabric (as well as the server)
./install_fabric.sh
