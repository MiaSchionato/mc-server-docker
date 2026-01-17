FROM eclipse-temurin:25-jre
RUN apt-get update && apt-get install -y bash curl && rm -rf /var/lib/apt/lists/*

WORKDIR /minecraft
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]

RUN echo "eula=true" > eula.txt
EXPOSE 25565


