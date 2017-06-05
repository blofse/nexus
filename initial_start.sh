#!/bin/bash

docker network create \
  --driver bridge \
  nexus-network

docker run \
  --name nexus-data \
  --net nexus-network \
  -d \
  sonatype/nexus3 \
  echo "data-only container for Nexus"

docker run \
  --name nexus \
  --net nexus-network \
  --volumes-from nexus-data \
  -p 8081:8081 \
  -d \
  sonatype/nexus3

echo Done!
