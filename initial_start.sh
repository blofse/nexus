#!/bin/bash

docker run --name nexus -p 8081:8081 -v NexusData:/nexus-data -d sonatype/nexus3

echo Done!
