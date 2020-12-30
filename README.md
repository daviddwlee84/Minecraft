# Minecraft

## Setup a Server

### Official

* [Tutorials/Setting up a server – Official Minecraft Wiki](https://minecraft.gamepedia.com/Tutorials/Setting_up_a_server)
* [Minecraft Server Download | Minecraft](https://www.minecraft.net/en-us/download/server)

Using Docker

```sh
docker run -d -p 25565:25565 --name mc -e VERSION=SNAPSHOT -e EULA=TRUE itzg/minecraft-server
```

Manually (version 1.16.4)

```sh
cd JavaServer
```

1. Install Java
   * `sudo apt install openjdk-8-jdk`
2. Download server `wget https://launcher.mojang.com/v1/objects/35139deedbd5182953cf1caa23835da59ca3d7cd/server.jar`
3. Run server `java -Xmx1024M -Xms1024M -jar server.jar nogui`

## Resources

### Third-party server

Free

* [Aternos | Minecraft servers. Free. Forever.](https://aternos.org/)
* [Minehut - Free Minecraft Server Hosting](https://minehut.com/)

### Github

* [GlowstoneMC/Glowstone: A fast, customizable and compatible open source server for Minecraft: Java Edition](https://github.com/GlowstoneMC/Glowstone)
* [AlexProgrammerDE/balena-minecraft-server: Build a Minecraft Server using a Raspberry Pi 4! Supports common Servers, SCP, RCON and Wifi Connect.](https://github.com/AlexProgrammerDE/balena-minecraft-server)

---

## Trouble Shooting

* [How to Agree to the EULA on a Minecraft Server - Knowledgebase - Akliz](https://www.akliz.net/manage/knowledgebase/44/How-to-Agree-to-the-EULA-on-a-Minecraft-Server.html)

Edit `eula.txt` and change `eula=false` to `eula=true`
