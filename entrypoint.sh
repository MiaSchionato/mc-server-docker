#!/usr/bin/env bash

if [ ! -f 'server.jar' ]; then
    curl -o server.jar $MC_VERSION_URL
fi

if [ ! -f 'eula.txt' ]; then
    echo 'eula=true' > eula.txt
fi

exec java $JAVA_OPTS -jar server.jar nogui
