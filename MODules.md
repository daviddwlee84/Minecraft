# Minecraft Mod

* [當個創世神模組 - 維基百科，自由的百科全書](https://zh.wikipedia.org/zh-tw/%E6%88%91%E7%9A%84%E4%B8%96%E7%95%8C%E6%A8%A1%E7%B5%84)

## Resources

* [Mods - Minecraft - CurseForge](https://www.curseforge.com/minecraft/mc-mods)
* [Caffeine](https://github.com/CaffeineMC)

## Mod Loader

> * [What Is The Difference Between Sponge, Forge, & Bukkit Servers? - YouTube](https://www.youtube.com/watch?v=3BN8hJNFj8U)
> * [客製化伺服器 - Minecraft Wiki，最詳細的官方Minecraft百科](https://minecraft.fandom.com/zh/wiki/%E5%AE%9A%E5%88%B6%E6%9C%8D%E5%8A%A1%E5%99%A8?variant=zh-tw)
> * [How to Add Mods to a Minecraft Server - Apex Hosting](https://apexminecrafthosting.com/how-to-add-mods/)

* Bukkit
  * Not for server-side plugins (Bukkit for example) which allow 100% vanilla clients to connect with no issue.
  * Nothing required other then the version of minecraft the server is running.
* Fabric
* Forge
  * Forge denies any connections if the client does not have forge installed. When you add a mod, that mod is required on every connecting client.
  * Requires the same minecraft version and all server side mods.
* Sponge

### Fabric

* [Fabric | The home of the Fabric mod development toolchain.](https://fabricmc.net/)
* [FabricMC/fabric: Essential hooks for modding with Fabric.](https://github.com/FabricMC/fabric)

> Put the mod's jar under the `mods/` folder

* [install [Fabric Wiki]](https://fabricmc.net/wiki/install)
  * [**player:tutorials:install_server [Fabric Wiki]**](https://fabricmc.net/wiki/player:tutorials:install_server)
  * [player:tutorials:install_mcl:windows [Fabric Wiki]](https://fabricmc.net/wiki/player:tutorials:install_mcl:windows)

> * [Mapping source name conflicts detected : fabricmc](https://www.reddit.com/r/fabricmc/comments/ldmyka/mapping_source_name_conflicts_detected/)
> * [Fabric Crashes on launch - Mapping source name conflicts detected · Issue #1086 · FabricMC/fabric](https://github.com/FabricMC/fabric/issues/1086)
>
> Basically the server.jar version incompatiable. Check if the `fabric-server-launcher.properties` point to the right version.

#### Fabric API

> In addition, most mods depend on an API mod, containing commonly used hooks.

* [Fabric API - Mods - Minecraft - CurseForge](https://www.curseforge.com/minecraft/mc-mods/fabric-api)

### Vanilla

* [How To Install Minecraft Modpacks Manually On Your Server](https://apexminecrafthosting.com/how-to-manually-install-a-modpack/)
* [Is adding mods to a vanilla server feasible? : Minecraft](https://www.reddit.com/r/Minecraft/comments/27fnb1/is_adding_mods_to_a_vanilla_server_feasible/)

### Bukkit

* [Bukkit](https://dev.bukkit.org/)
* [Get Bukkit | Download CraftBukkit 1.17.1 | Download Spigot 1.17.1](https://getbukkit.org/)
* [客製化伺服器/Bukkit - Minecraft Wiki，最詳細的官方Minecraft百科](https://minecraft.fandom.com/zh/wiki/%E5%AE%9A%E5%88%B6%E6%9C%8D%E5%8A%A1%E5%99%A8/Bukkit?variant=zh-tw)

## Mod Manager

### CurseForge

* [CurseForge Mods and Addons | Overwolf.com](https://download.curseforge.com/)

## Module / Plugin

### Management

#### Mod Menu

> Only work on client side

* [Mod Menu - Mods - Minecraft - CurseForge](https://www.curseforge.com/minecraft/mc-mods/modmenu)
* [TerraformersMC/ModMenu: A menu for, you guessed it, mods!](https://github.com/TerraformersMC/ModMenu)
  * [API · TerraformersMC/ModMenu Wiki](https://github.com/TerraformersMC/ModMenu/wiki/API)

### Performance

* [1.17 優化模組整理](https://www.notion.so/ac595613bb744e3f9d5467e049397e76?v=a284736c4dcd45fd863e9ba92cea31a2)

#### Sodium

> Haven't support 1.17 yet

* [Sodium - Mods - Minecraft - CurseForge](https://www.curseforge.com/minecraft/mc-mods/sodium)
* [CaffeineMC/sodium-fabric: A Fabric mod designed to improve frame rates and reduce micro-stutter](https://github.com/CaffeineMC/sodium-fabric)

#### Lithium

> It works on both the client and server, and doesn't require the mod to be installed on both sides.

* [CaffeineMC/lithium-fabric: A Fabric mod designed to improve the general performance of Minecraft without breaking things](https://github.com/CaffeineMC/lithium-fabric)

#### Hydrogen

> It works on both the client and server, and doesn't require the mod to be installed on both sides.

* [CaffeineMC/hydrogen-fabric: Things of which are too dangerous to put in Lithium.](https://github.com/CaffeineMC/hydrogen-fabric)
* [1.17.1 compatibility · Issue #48 · CaffeineMC/hydrogen-fabric](https://github.com/CaffeineMC/hydrogen-fabric/issues/48)

#### Krypton

* [astei/krypton: A Fabric mod that optimizes the Minecraft networking stack and entity tracker.](https://github.com/astei/krypton)

#### FerriteCore

> Good for improve memory usage with low-end computer

* [FerriteCore (Fabric) - Mods - Minecraft - CurseForge](https://www.curseforge.com/minecraft/mc-mods/ferritecore-fabric)
* [malte0811/FerriteCore](https://github.com/malte0811/FerriteCore)

#### Iris Shaders

* [This is Iris](https://irisshaders.net/)
* [IrisShaders/Iris: (WIP) A new shaders mod for Minecraft intended to be compatible with existing ShadersMod/Optifine shaders](https://github.com/IrisShaders/Iris)

#### Chunky Pregenerator

> Just install on server side

* [Chunky Pregenerator (Fabric) - Mods - Minecraft - CurseForge](https://www.curseforge.com/minecraft/mc-mods/chunky-pregenerator)
* [pop4959/Chunky: Generates chunks](https://github.com/pop4959/Chunky)
  * [Installing · pop4959/Chunky Wiki](https://github.com/pop4959/Chunky/wiki/Installing)
  * [Pregeneration · pop4959/Chunky Wiki](https://github.com/pop4959/Chunky/wiki/Pregeneration)

```txt
cchunky radius 5000
[01:37:21] [Server thread/INFO]: [Chunky] Radius changed to 5000.
chunky start
[01:37:29] [Server thread/INFO]: [Chunky] Task started in minecraft:overworld for the square region centered at 0, 0 with radius 5000.
[01:37:30] [Chunky-minecraft:overworld Thread/INFO]: [Chunky] Task running for minecraft:overworld. Processed: 993 chunks (0.25%), ETA: 0:06:58, Rate: 936.8 cps, Current: 16, -16
[01:37:31] [Chunky-minecraft:overworld Thread/INFO]: [Chunky] Task running for minecraft:overworld. Processed: 2255 chunks (0.57%), ETA: 0:05:57, Rate: 1094.7 cps, Current: 24, -22
[01:37:32] [Chunky-minecraft:overworld Thread/INFO]: [Chunky] Task running for minecraft:overworld. Processed: 2902 chunks (0.74%), ETA: 0:06:51, Rate: 948.4 cps, Current: -12, -27

...

[06:19:26] [Server thread/INFO]: [Chunky] Task running for minecraft:overworld. Processed: 284631 chunks (72.40%), ETA: 3:00:44, Rate: 10.0 cps, Current: 259, -267

...

[06:43:19] [Server thread/INFO]: [Chunky] Task running for minecraft:overworld. Processed: 296260 chunks (75.36%), ETA: 37:13:38, Rate: 0.7 cps, Current: -272, 51
[06:43:21] [Server Watchdog/FATAL]: A single server tick took 60.57 seconds (should be max 0.05)
[06:43:21] [Server Watchdog/FATAL]: Considering it to be crashed, server will forcibly shutdown.
[06:43:24] [Server thread/INFO]: [Chunky] Task running for minecraft:overworld. Processed: 296262 chunks (75.36%), ETA: 39:19:47, Rate: 0.7 cps, Current: -272, 53
Crash report:
---- Minecraft Crash Report ----
// Quite honestly, I wouldn't worry myself about that.

Time: 7/11/21, 6:43 AM
Description: Watching Server

java.lang.Error: Watchdog
        at java.base@17-ea/jdk.internal.misc.Unsafe.unpark(Native Method)                                                                                                                                                at java.base@17-ea/java.util.concurrent.locks.LockSupport.unpark(LockSupport.java:177)
        at java.base@17-ea/java.util.concurrent.CompletableFuture$Signaller.tryFire(CompletableFuture.java:1848)
        at java.base@17-ea/java.util.concurrent.CompletableFuture.postComplete(CompletableFuture.java:510)
        at java.base@17-ea/java.util.concurrent.CompletableFuture$AsyncSupply.run(CompletableFuture.java:1773)
        at net.minecraft.class_3738.run(class_3738.java:18)
        at net.minecraft.class_1255.method_18859(class_1255.java:151)
        at net.minecraft.class_4093.method_18859(class_4093.java:23)
        at net.minecraft.server.MinecraftServer.method_24306(MinecraftServer.java:788)
        at net.minecraft.server.MinecraftServer.method_18859(MinecraftServer.java:164)
        at net.minecraft.class_1255.method_16075(class_1255.java:125)
        at net.minecraft.server.MinecraftServer.method_20415(MinecraftServer.java:770)
        at net.minecraft.server.MinecraftServer.method_16075(MinecraftServer.java:764)
        at net.minecraft.class_1255.method_5383(class_1255.java:110)
        at net.minecraft.server.MinecraftServer.method_16208(MinecraftServer.java:748)
        at net.minecraft.server.MinecraftServer.method_29741(MinecraftServer.java:701)
        at net.minecraft.server.MinecraftServer.method_29739(MinecraftServer.java:270)
        at net.minecraft.server.MinecraftServer$$Lambda$4123/0x000000080147bbc0.run(Unknown Source)
        at java.base@17-ea/java.lang.Thread.run(Thread.java:833)

...

chunky continue
[10:44:24] [Server thread/INFO]: [Chunky] Task continuing for minecraft:overworld.
[10:44:29] [Server thread/WARN]: Can't keep up! Is the server overloaded? Running 2033ms or 40 ticks behind
[10:44:38] [Server thread/INFO]: [Chunky] Task running for minecraft:overworld. Processed: 296267 chunks (75.36%), ETA: 6:45:12, Rate: 4.0 cps, Current: -272, 60
[10:44:39] [Server thread/INFO]: [Chunky] Task running for minecraft:overworld. Processed: 296274 chunks (75.36%), ETA: 5:28:54, Rate: 4.9 cps, Current: -272, 71

...

[13:14:59] [Server thread/INFO]: [Chunky] Task running for minecraft:overworld. Processed: 393065 chunks (99.98%), ETA: 0:00:05, Rate: 12.6 cps, Current: 249, 313
[13:15:00] [Server thread/INFO]: [Chunky] Task running for minecraft:overworld. Processed: 393082 chunks (99.99%), ETA: 0:00:03, Rate: 12.6 cps, Current: 267, 313
[13:15:07] [Server thread/INFO]: [Chunky] Task finished for minecraft:overworld. Processed: 393129 chunks (100.00%), Total time: 7:36:42

(Try to generate nether as well, Seems this fail)
chunky world world_nether
[13:18:10] [Server thread/INFO]: chunky world <world> - Set the world target
chunky start
[13:18:28] [Server thread/INFO]: [Chunky] Task started in minecraft:overworld for the square region centered at 0, 0 with radius 500.
[13:18:29] [Chunky-minecraft:overworld Thread/INFO]: [Chunky] Task running for minecraft:overworld. Processed: 1527 chunks (36.14%), ETA: 0:00:01, Rate: 1527.0 cps, Current: 20, 14
[13:18:30] [Chunky-minecraft:overworld Thread/INFO]: [Chunky] Task running for minecraft:overworld. Processed: 2879 chunks (68.14%), ETA: 0:00:00, Rate: 1438.8 cps, Current: 11, -27
[13:18:31] [Chunky-minecraft:overworld Thread/INFO]: [Chunky] Task running for minecraft:overworld. Processed: 4213 chunks (99.72%), ETA: 0:00:00, Rate: 1403.9 cps, Current: 20, 32
[13:18:31] [Chunky-minecraft:overworld Thread/INFO]: [Chunky] Task finished for minecraft:overworld. Processed: 4225 chunks (100.00%), Total time: 0:00:03
```
