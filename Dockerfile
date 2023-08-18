FROM eclipse-temurin:17-jdk-jammy
# RUN apt update
# RUN apt install wget
WORKDIR /minecraft
RUN wget https://piston-data.mojang.com/v1/objects/84194a2f286ef7c14ed7ce0090dba59902951553/server.jar
RUN echo "eula=true" > eula.txt
# RUN echo -e "#Minecraft server properties\n\
# #(File modification date and time)\n\
# enable-jmx-monitoring=false\n\
# rcon.port=25575\n\
# level-seed=\n\
# gamemode=survival\n\
# enable-command-block=false\n\
# enable-query=false\n\
# generator-settings={}\n\
# enforce-secure-profile=true\n\
# level-name=world\n\
# motd=A Minecraft Server\n\
# query.port=25565\n\
# pvp=true\n\
# generate-structures=true\n\
# max-chained-neighbor-updates=1000000\n\
# difficulty=easy\n\
# network-compression-threshold=256\n\
# max-tick-time=60000\n\
# require-resource-pack=false\n\
# use-native-transport=true\n\
# max-players=20\n\
# online-mode=true\n\
# enable-status=true\n\
# allow-flight=false\n\
# initial-disabled-packs=\n\
# broadcast-rcon-to-ops=true\n\
# view-distance=10\n\
# server-ip=\n\
# resource-pack-prompt=\n\
# allow-nether=true\n\
# server-port=25565\n\
# enable-rcon=false\n\
# sync-chunk-writes=true\n\
# op-permission-level=4\n\
# prevent-proxy-connections=false\n\
# hide-online-players=false\n\
# resource-pack=\n\
# entity-broadcast-range-percentage=100\n\
# simulation-distance=10\n\
# rcon.password=\n\
# player-idle-timeout=0\n\
# force-gamemode=false\n\
# rate-limit=0\n\
# hardcore=false\n\
# white-list=false\n\
# broadcast-console-to-ops=true\n\
# spawn-npcs=true\n\
# spawn-animals=true\n\
# log-ips=true\n\
# function-permission-level=2\n\
# initial-enabled-packs=vanilla\n\
# level-type=minecraft\:normal\n\
# text-filtering-config=\n\
# spawn-monsters=true\n\
# enforce-whitelist=false\n\
# spawn-protection=16\n\
# resource-pack-sha1=\n\
# max-world-size=29999984" > server.properties
# java -Xmx1024M -Xms1024M -XX:+UseShenandoahGC -jar minecraft_server.1.20.1.jar nogui
ENTRYPOINT [ "java", "-Xmx1024M", "-Xms1024M", "-XX:+UseShenandoahGC", "-jar", "server.jar", "nogui" ]
