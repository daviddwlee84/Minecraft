#!/bin/bash

# wget https://maven.fabricmc.net/net/fabricmc/fabric-installer/0.7.4/fabric-installer-0.7.4.jar -P JavaServer
wget https://maven.fabricmc.net/net/fabricmc/fabric-installer/0.9.1/fabric-installer-0.9.1-server.jar -P JavaServer
cd JavaServer
# Make sure you don't have the "old" server.jar (you better want to delete it first)
# java -jar fabric-installer-0.7.4.jar server -mcversion 1.17.1 -downloadMinecraft
java -jar fabric-installer-0.9.1.jar server -mcversion 1.19.3 -downloadMinecraft
