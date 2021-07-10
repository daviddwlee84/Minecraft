#!/bin/bash
cd JavaServer
# Vanilla
# ../jdk-17/bin/java -Xmx4096M -Xms4096M -jar server.jar nogui
# With Fabric
../jdk-17/bin/java -Xmx4096M -Xms4096M -jar fabric-server-launch.jar
