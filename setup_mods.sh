#!/bin/bash

MOD_PATH=${1:-JavaServer/mods}

# Fabric API
# https://github.com/FabricMC/fabric/releases
wget https://github.com/FabricMC/fabric/releases/download/0.36.1%2B1.17/fabric-api-0.36.1+1.17.jar -P $MOD_PATH

# Chunky (TODO: server only)
# https://ci.codemc.io/view/Author/job/pop4959/job/Chunky/
wget https://ci.codemc.io/view/Author/job/pop4959/job/Chunky/lastSuccessfulBuild/artifact/fabric/build/libs/Chunky-1.2.95.jar -P $MOD_PATH

# ModMenu (TODO: client only)
wget https://github.com/TerraformersMC/ModMenu/releases/download/v2.0.2/modmenu-2.0.2.jar -P $MOD_PATH

# Lithium
wget https://github.com/CaffeineMC/lithium-fabric/releases/download/mc1.17.1-0.7.3/lithium-fabric-mc1.17.1-0.7.3-api.jar -P $MOD_PATH
wget https://github.com/CaffeineMC/lithium-fabric/releases/download/mc1.17.1-0.7.3/lithium-fabric-mc1.17.1-0.7.3.jar -P $MOD_PATH

# Hydrogen (have bug of 1.17.1)
# wget https://github.com/CaffeineMC/hydrogen-fabric/releases/download/mc1.17-0.3.0/hydrogen-fabric-mc1.17-0.3.jar -P $MOD_PATH

# Krypton
wget https://github.com/astei/krypton/releases/download/v0.1.4/krypton-0.1.4.jar -P $MOD_PATH
