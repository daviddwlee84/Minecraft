# syntax=docker/dockerfile:1

# https://docs.docker.com/language/java/build-images/#create-a-dockerfile-for-java
FROM eclipse-temurin:17-jdk-jammy
WORKDIR /minecraft

# COPY setup_fabric.sh /minecraft/setup_fabric.sh
# COPY setup_mods.sh /minecraft/setup_mods.sh
COPY setup_fabric.sh /minecraft
COPY setup_mods.sh /minecraft

RUN "chmod +x /minecraft/setup_fabric.sh /minecraft/setup_mods.sh"
RUN ["sed -i -e 's/\r$//' setup_fabric.sh; ./setup_fabric.sh"]
RUN ["sed -i -e 's/\r$//' setup_mods.sh; ./setup_mods.sh"]

WORKDIR /minecraft/JavaServer
CMD ["java", "-Xmx4096M", "-Xms4096M", "-jar", "fabric-server-launch.jar"]
