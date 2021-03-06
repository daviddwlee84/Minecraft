# Minecraft

## Setup a Server

### Official

* [Tutorials/Setting up a server – Official Minecraft Wiki](https://minecraft.gamepedia.com/Tutorials/Setting_up_a_server)
* [Minecraft Server Download | Minecraft](https://www.minecraft.net/en-us/download/server)

Using Docker

```sh
docker run -d -p 25565:25565 --name mc -e VERSION=SNAPSHOT -e EULA=TRUE itzg/minecraft-server
```

Manually (version 1.16.5)

> Windows Powershell get [Chocolatey](https://chocolatey.org/install)

```sh
cd JavaServer
```

1. Clone this project
2. Install Java
   * Debian: `sudo apt install openjdk-8-jdk`
   * Powershell: (Start as administrator) `choco install openjdk`
3. Download server `wget https://launcher.mojang.com/v1/objects/1b557e7b033b583cd9f66746b7a9ab1ec1673ced/server.jar` (1.16.5)
   * Legacy Version
     * 1.16.4 `wget https://launcher.mojang.com/v1/objects/35139deedbd5182953cf1caa23835da59ca3d7cd/server.jar`
4. Run server `java -Xmx1024M -Xms1024M -jar server.jar nogui`
   * If your server has more resource, then: `java -Xmx8G -Xms8G -jar server.jar nogui`

> [java - What are the -Xms and -Xmx parameters when starting JVM? - Stack Overflow](https://stackoverflow.com/questions/14763079/what-are-the-xms-and-xmx-parameters-when-starting-jvm)

## TODO

* [ ] Maybe try some Server Management system
* [ ] Make backup script automatically
  * [ ] stop, backup, restart
  * [ ] compress, upload to Github release with new tag

## Resources

### Official Links

* [Backing up Minecraft worlds – Home](https://help.minecraft.net/hc/en-us/articles/360034754912-Backing-up-Minecraft-worlds-)

### Accessory

* [Minecraft Apps - Overview](https://www.chunkbase.com/apps/)

### Third-party Server

Free

* [Aternos | Minecraft servers. Free. Forever.](https://aternos.org/)
* [Minehut - Free Minecraft Server Hosting](https://minehut.com/)

Paid

* [Shockbyte - Minecraft Server Hosting](https://shockbyte.com/)

Uncategorized

* [SpigotMC - High Performance Minecraft](https://www.spigotmc.org/)

### Github

* [GlowstoneMC/Glowstone: A fast, customizable and compatible open source server for Minecraft: Java Edition](https://github.com/GlowstoneMC/Glowstone)
* [AlexProgrammerDE/balena-minecraft-server: Build a Minecraft Server using a Raspberry Pi 4! Supports common Servers, SCP, RCON and Wifi Connect.](https://github.com/AlexProgrammerDE/balena-minecraft-server)

Server Management Script

> https://minecraft.gamepedia.com/Tutorials/Setting_up_a_server#Startup_and_maintenance_script

* [Home | MSCS Docs](https://minecraftservercontrol.github.io/docs/mscs)
  * [MinecraftServerControl/mscs: Powerful command-line control for UNIX and Linux powered Minecraft servers](https://github.com/MinecraftServerControl/mscs)
* [Minecraft Server Manager](http://msmhq.com/)
  * [msmhq/msm: An init script for managing Minecraft servers](https://github.com/msmhq/msm)
* [Tutorials/Ubuntu startup script – Official Minecraft Wiki](https://minecraft.gamepedia.com/Tutorials/Ubuntu_startup_script)

Backup

* [Programs and editors/Backup utilities – Official Minecraft Wiki](https://minecraft.gamepedia.com/Programs_and_editors/Backup_utilities)

---

Vanilla Server World into Single Player World?

* [How do I convert a server world into a single player world? - Java Edition Support - Support - Minecraft Forum - Minecraft Forum](https://www.minecraftforum.net/forums/support/java-edition-support/2455400-how-do-i-convert-a-server-world-into-a-single)
* [minecraft java edition - How do I convert a SMP server world into a Single-player compatable world? - Arqade](https://gaming.stackexchange.com/questions/188559/how-do-i-convert-a-smp-server-world-into-a-single-player-compatable-world)
* [How do we transfer a multiplayer server world to single-player? : Minecraft](https://www.reddit.com/r/Minecraft/comments/a9ytnv/how_do_we_transfer_a_multiplayer_server_world_to/)

## Trouble Shooting

### EULA agreement on Minecraft Server startup

* [How to Agree to the EULA on a Minecraft Server - Knowledgebase - Akliz](https://www.akliz.net/manage/knowledgebase/44/How-to-Agree-to-the-EULA-on-a-Minecraft-Server.html)

Edit `eula.txt` and change `eula=false` to `eula=true`

### [Server thread/WARN]: Can't keep up! Is the server overloaded? Running Xms or Y ticks behind

* [【問題】關於伺服器架設出現can't keep up的問題 @Minecraft 我的世界（當個創世神） 哈啦板 - 巴哈姆特](https://forum.gamer.com.tw/C.php?bsn=18673&snA=171740)

Assign more memory
