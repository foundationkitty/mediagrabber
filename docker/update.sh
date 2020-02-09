#!/bin/bash
docker images | awk '(NR>1) && ($2!~/none/) {print $1":"$2}' | xargs -L1 docker pull
cd deezloader
docker-compose up -d
cd ../deluge
docker-compose up -d
cd ../indexers
docker-compose up -d
cd ../minecraftbed
docker-compose up -d
cd ../netdata
docker-compose up -d
cd ../plex
docker-compose up -d
cd ../sabnzbd
docker-compose up -d
cd ../scrapers
docker-compose up -d
cd ../webbase
docker-compose up -d
cd ..
