FROM eclipse-temurin:17-jdk-jammy
WORKDIR /minecraft
RUN wget https://piston-data.mojang.com/v1/objects/84194a2f286ef7c14ed7ce0090dba59902951553/server.jar
RUN echo "eula=true" > eula.txt
ENTRYPOINT [ "java", "-Xmx1024M", "-Xms1024M", "-XX:+UseShenandoahGC", "-jar", "server.jar", "nogui" ]
