#!/bin/sh

echo Stopping existing container
docker stop nexus

echo Copying and running service
yes | cp docker-nexus.service /etc/systemd/system/.

systemctl daemon-reload

systemctl enable docker-nexus
systemctl start docker-nexus

echo Done!
