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

> Windows Powershell get [Chocolatey](https://chocolatey.org/install)

```sh
cd JavaServer
```

1. Clone this project
2. Install Java
   * Debian: `sudo apt install openjdk-8-jdk`
   * Powershell: (Start as administrator) `choco install openjdk`
3. Download server `wget https://launcher.mojang.com/v1/objects/35139deedbd5182953cf1caa23835da59ca3d7cd/server.jar`
4. Run server `java -Xmx1024M -Xms1024M -jar server.jar nogui`

## Backup

Current server is generated with seed `4154344611007999313`. Which the initial spawn point is near by a Village and a [Nether Portal](https://minecraft.gamepedia.com/Nether_portal). In addition, the Nether Portal in Nether is near by a [Nether Fortress](https://minecraft.gamepedia.com/Nether_Fortress).

The world backup can be found in [release](https://github.com/daviddwlee84/Minecraft/releases) page.

### Github Release Backup

1. Install [GitHub CLI](https://cli.github.com/) ([Repository](https://github.com/cli/cli))
   * Debian
     * `sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0`
     * `sudo apt-add-repository https://cli.github.com/packages`
     * `sudo apt update`
     * `sudo apt install gh`
   * Powershell: `choco install gh`
2. Make sure the server is stop ([Is it safe to close Minecraft's multiplayer server? - Arqade](https://gaming.stackexchange.com/questions/19914/is-it-safe-to-close-minecrafts-multiplayer-server))
   1. In Minecraft console: `save-all`
   2. In Minecraft console: `close`
3. Compress the world by `zip -r world.zip world`
4. Upload the world to Github Release by Github CLI (make sure you have login first `gh auth login`)
   1. `gh release create vX.Y.Z world.zip`

## TODO

* [ ] Maybe try some Server Management system
* [ ] Make backup script automatically
  * [ ] stop, backup, restart
  * [ ] compress, upload to Github release with new tag

## Resources

### Official Links

* [Backing up Minecraft worlds – Home](https://help.minecraft.net/hc/en-us/articles/360034754912-Backing-up-Minecraft-worlds-)

### Third-party server

Free

* [Aternos | Minecraft servers. Free. Forever.](https://aternos.org/)
* [Minehut - Free Minecraft Server Hosting](https://minehut.com/)

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

## Trouble Shooting

### EULA agreement on Minecraft Server startup

* [How to Agree to the EULA on a Minecraft Server - Knowledgebase - Akliz](https://www.akliz.net/manage/knowledgebase/44/How-to-Agree-to-the-EULA-on-a-Minecraft-Server.html)

Edit `eula.txt` and change `eula=false` to `eula=true`

### [Server thread/WARN]: Can't keep up! Is the server overloaded? Running Xms or Y ticks behind

* [【問題】關於伺服器架設出現can't keep up的問題 @Minecraft 我的世界（當個創世神） 哈啦板 - 巴哈姆特](https://forum.gamer.com.tw/C.php?bsn=18673&snA=171740)

Assign more memory
