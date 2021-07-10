# Minecraft Mod

* [當個創世神模組 - 維基百科，自由的百科全書](https://zh.wikipedia.org/zh-tw/%E6%88%91%E7%9A%84%E4%B8%96%E7%95%8C%E6%A8%A1%E7%B5%84)

## Resources

* [Mods - Minecraft - CurseForge](https://www.curseforge.com/minecraft/mc-mods)
* [1.17 優化模組整理](https://www.notion.so/ac595613bb744e3f9d5467e049397e76?v=a284736c4dcd45fd863e9ba92cea31a2)
* [Caffeine](https://github.com/CaffeineMC)

## Mod Manager/Loader

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

## Module / Plugin

### Performance

#### Chunky Pregenerator

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

chunky world world_nether
TODO
chunky start
TODO
```

#### Lithium (for Fabric)

* [CaffeineMC/lithium-fabric: A Fabric mod designed to improve the general performance of Minecraft without breaking things](https://github.com/CaffeineMC/lithium-fabric)
