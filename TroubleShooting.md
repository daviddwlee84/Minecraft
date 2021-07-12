# Trouble Shooting

## Mod 'Chunky' (chunky) requires any version of mod fabric, which is missing!

I'm using Fabric with vanilla Minecraft server version 1.17 and was failed to run the server. (Which shows it can't detect fabric somehow?!)

Here is the log with `Chunky-1.2.93.jar` as the only single mod installed.

```sh
$ java -jar fabric-server-launch.jar
[01:04:30] [main/INFO]: Loading for game Minecraft 1.17
[01:04:30] [main/FATAL]: A critical error occurred
net.fabricmc.loader.discovery.ModResolutionException: Errors were found!
 - Mod 'Chunky' (chunky) requires any version of mod fabric, which is missing!
         - You must install any version of fabric.
        at net.fabricmc.loader.discovery.ModResolver.findCompatibleSet(ModResolver.java:342) ~[fabric-server-launch.jar:?]
        at net.fabricmc.loader.discovery.ModResolver.resolve(ModResolver.java:832) ~[fabric-server-launch.jar:?]
        at net.fabricmc.loader.FabricLoader.setup(FabricLoader.java:195) ~[fabric-server-launch.jar:?]
        at net.fabricmc.loader.FabricLoader.load(FabricLoader.java:185) [fabric-server-launch.jar:?]
        at net.fabricmc.loader.launch.knot.Knot.init(Knot.java:132) [fabric-server-launch.jar:?]
        at net.fabricmc.loader.launch.knot.KnotServer.main(KnotServer.java:28) [fabric-server-launch.jar:?]
        at jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method) ~[?:?]
        at jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:77) ~[?:?]
        at jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43) ~[?:?]
        at java.lang.reflect.Method.invoke(Method.java:568) ~[?:?]
        at net.fabricmc.loader.launch.server.FabricServerLauncher.launch(FabricServerLauncher.java:68) [fabric-server-launch.jar:?]
        at net.fabricmc.loader.launch.server.FabricServerLauncher.setup(FabricServerLauncher.java:114) [fabric-server-launch.jar:?]
        at net.fabricmc.loader.launch.server.FabricServerLauncher.main(FabricServerLauncher.java:56) [fabric-server-launch.jar:?]
```

Here is starting log with the fabric without any mod installed.

```sh
$ java -jar fabric-server-launch.jar
[01:08:58] [main/INFO]: Loading for game Minecraft 1.17
[01:08:58] [main/INFO]: [FabricLoader] Loading 3 mods:
        - fabricloader@0.11.6
        - java@17
        - minecraft@1.17
[01:08:58] [main/INFO]: SpongePowered MIXIN Subsystem Version=0.8.2 Source=file:/home/daviddwlee84/Minecraft/JavaServer/fabric-server-launch.jar Service=Knot/Fabric Env=SERVER
[01:09:03] [main/INFO]: Environment: authHost='https://authserver.mojang.com', accountsHost='https://api.mojang.com', sessionHost='https://sessionserver.mojang.com', servicesHost='https://api.minecraftservices.com', name='PROD'
[01:09:03] [main/WARN]: Ambiguity between arguments [teleport, location] and [teleport, destination] with inputs: [0.1 -0.5 .9, 0 0 0]
[01:09:03] [main/WARN]: Ambiguity between arguments [teleport, location] and [teleport, targets] with inputs: [0.1 -0.5 .9, 0 0 0]
[01:09:03] [main/WARN]: Ambiguity between arguments [teleport, destination] and [teleport, targets] with inputs: [Player, 0123, @e, dd12be42-52a9-4a91-a8a1-11c01849e498]
[01:09:03] [main/WARN]: Ambiguity between arguments [teleport, targets] and [teleport, destination] with inputs: [Player, 0123, dd12be42-52a9-4a91-a8a1-11c01849e498]
[01:09:03] [main/WARN]: Ambiguity between arguments [teleport, targets, location] and [teleport, targets, destination] with inputs: [0.1 -0.5 .9, 0 0 0]
[01:09:03] [main/INFO]: Reloading ResourceManager: Default
[01:09:04] [Worker-Main-2/INFO]: Loaded 7 recipes
[01:09:05] [Worker-Main-2/INFO]: Loaded 1137 advancements
[01:09:06] [Server thread/INFO]: Starting minecraft server version 1.17
[01:09:06] [Server thread/INFO]: Loading properties
[01:09:06] [Server thread/INFO]: Default game type: SURVIVAL
[01:09:06] [Server thread/INFO]: Generating keypair
[01:09:07] [Server thread/INFO]: Starting Minecraft server on *:25565
[01:09:07] [Server thread/INFO]: Using epoll channel type
[01:09:07] [Server thread/INFO]: Preparing level "world"
[01:09:07] [Server thread/INFO]: Preparing start region for dimension minecraft:overworld
[01:09:08] [Worker-Main-2/INFO]: Preparing spawn area: 0%
[01:09:08] [Worker-Main-2/INFO]: Preparing spawn area: 0%
[01:09:08] [Worker-Main-2/INFO]: Preparing spawn area: 0%
[01:09:09] [Worker-Main-2/INFO]: Preparing spawn area: 0%
[01:09:09] [Worker-Main-2/INFO]: Preparing spawn area: 0%
[01:09:10] [Worker-Main-2/INFO]: Preparing spawn area: 4%
[01:09:10] [Worker-Main-2/INFO]: Preparing spawn area: 11%
[01:09:11] [Worker-Main-2/INFO]: Preparing spawn area: 22%
[01:09:11] [Worker-Main-2/INFO]: Preparing spawn area: 39%
[01:09:12] [Worker-Main-2/INFO]: Preparing spawn area: 68%
[01:09:12] [Worker-Main-2/INFO]: Preparing spawn area: 90%
[01:09:13] [Server thread/INFO]: Time elapsed: 5948 ms
[01:09:13] [Server thread/INFO]: Done (6.095s)! For help, type "help"
```

=> The Fabric "Loader" and the ["Fabric API"](https://www.curseforge.com/minecraft/mc-mods/fabric-api) is different thing. The later one can be seen as one of the plugins.

### Failed to log in: The authentication servers are currently not reachable. Please try again

> * https://www.reddit.com/r/Minecraft/comments/o0wj63/failed_to_log_in_the_authentication_servers_are/

```txt
[19:56:33] [User Authenticator #18/INFO]: UUID of player TW_DavidLee is 64f7e309-29a2-42c2-bd46-ae873e79e82a
[19:56:34] [Server thread/INFO]: TW_DavidLee[/140.116.29.90:56975] logged in with entity id 96965 at (-334.65451064156525, 71.0, 189.51249998807907)
[19:56:34] [Server thread/INFO]: TW_DavidLee joined the game
[19:58:24] [Server thread/INFO]: TW_DavidLee lost connection: Disconnected
[19:58:24] [Server thread/INFO]: TW_DavidLee left the game
[19:59:17] [Server thread/INFO]: com.mojang.authlib.GameProfile@83fd01d[id=<null>,name=TW_DavidLee,properties={},legacy=false] (/117.61.18.173:61779) lost connection: Disconnected
```
