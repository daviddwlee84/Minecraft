#!/bin/bash

MOD_PATH=${1:-JavaServer/mods}

# Fabric API
# Essential hooks for modding with Fabric
# https://github.com/FabricMC/fabric/releases
# wget https://github.com/FabricMC/fabric/releases/download/0.36.1%2B1.17/fabric-api-0.36.1+1.17.jar -P $MOD_PATH
wget https://github.com/FabricMC/fabric/releases/download/0.68.0%2B1.19.2/fabric-api-0.68.0+1.19.2.jar -P $MOD_PATH

# Chunky (server only)
if [[$MOD_PATH = "JavaServer/mods"]]
then
# https://ci.codemc.io/view/Author/job/pop4959/job/Chunky/
# wget https://ci.codemc.io/view/Author/job/pop4959/job/Chunky/lastSuccessfulBuild/artifact/fabric/build/libs/Chunky-1.2.95.jar -P $MOD_PATH
wget https://ci.codemc.io/view/Author/job/pop4959/job/Chunky/lastSuccessfulBuild/artifact/fabric/build/libs/Chunky-1.3.51.jar -P $MOD_PATH
fi

# ModMenu (client only)
# A menu for mods
if [[$MOD_PATH != "JavaServer/mods"]]
then
# wget https://github.com/TerraformersMC/ModMenu/releases/download/v2.0.2/modmenu-2.0.2.jar -P $MOD_PATH
wget https://github.com/TerraformersMC/ModMenu/releases/download/v5.0.2/modmenu-5.0.2.jar -P $MOD_PATH
fi

# Lithium
# Lithium is a free and open-source Minecraft mod which works to optimize many areas of the game in order to provide better overall performance.
# wget https://github.com/CaffeineMC/lithium-fabric/releases/download/mc1.17.1-0.7.3/lithium-fabric-mc1.17.1-0.7.3-api.jar -P $MOD_PATH
# wget https://github.com/CaffeineMC/lithium-fabric/releases/download/mc1.17.1-0.7.3/lithium-fabric-mc1.17.1-0.7.3.jar -P $MOD_PATH
wget https://github.com/CaffeineMC/lithium-fabric/releases/download/1.19.3-0.10.4/lithium-fabric-mc1.19.3-0.10.4-api.jar -P $MOD_PATH
wget https://github.com/CaffeineMC/lithium-fabric/releases/download/1.19.3-0.10.4/lithium-fabric-mc1.19.3-0.10.4.jar -P $MOD_PATH

# Hydrogen (have bug of 1.17.1)
# wget https://github.com/CaffeineMC/hydrogen-fabric/releases/download/mc1.17-0.3.0/hydrogen-fabric-mc1.17-0.3.jar -P $MOD_PATH

# Krypton
# Krypton is a Fabric mod that attempts to optimize the Minecraft networking stack.
# wget https://github.com/astei/krypton/releases/download/v0.1.4/krypton-0.1.4.jar -P $MOD_PATH
wget https://github.com/astei/krypton/releases/download/v0.2.1/krypton-0.2.1.jar -P $MOD_PATH

# Sodium
# Sodium is a free and open-source optimization mod for the Minecraft client that improves frame rates, reduces micro-stutter, and fixes graphical issues in Minecraft.
# wget https://github.com/CaffeineMC/sodium-fabric/releases/download/mc1.17.1-0.3.0/sodium-fabric-mc1.17.1-0.3.0+build.5.jar -P $MOD_PATH
wget https://github.com/CaffeineMC/sodium-fabric/releases/download/mc1.19.3-0.4.6/sodium-fabric-mc1.19.3-0.4.6+build.20.jar -P $MOD_PATH
