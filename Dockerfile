FROM eclipse-temurin:25-jre
# RUN apk update && apk upgrade

WORKDIR /minecraft
COPY server.jar server.jar
# COPY paper-server/build/libs server.jar

RUN echo "eula=true" > eula.txt
VOLUME /minecraft/world
EXPOSE 25565
# CMD ["java", "-Xmx2048M", "-Xms2048M", "-jar", "server.jar", "nogui"]
CMD ["java", "-Xms4G", "-Xmx4G", "-XX:+UseG1GC", "-XX:+ParallelRefProcEnabled", "-XX:MaxGCPauseMillis=200", "-XX:+UnlockExperimentalVMOptions", "-XX:+DisableExplicitGC", "-XX:+AlwaysPreTouch", "-XX:G1NewSizePercent=30", "-XX:G1MaxNewSizePercent=40", "-XX:G1HeapRegionSize=8M", "-XX:G1ReservePercent=20", "-XX:G1HeapWastePercent=5", "-XX:G1MixedGCCountTarget=4", "-XX:InitiatingHeapOccupancyPercent=15", "-XX:G1MixedGCLiveThresholdPercent=90", "-XX:G1RSetUpdatingPauseTimePercent=5", "-XX:SurvivorRatio=32", "-XX:+PerfDisableSharedMem", "-XX:MaxTenuringThreshold=1", "-jar", "server.jar", "nogui"]

