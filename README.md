# nexus
Setting up nexus as a docker repo

Any feedback let me know - its all welcome!

# Pre-req

Before running this docker image, please [clone / download the repo](https://github.com/blofse/nexus, including the script files.

# How to use this image
## Initialise

Run the following command:
```
./initial_start
```
This will setup one container: 
* nexus - the container containing the nexus server

## (optional) setting up as a service

Once initialised and perhaps migrated, the docker container can then be run as a service. 
Included in the repo is the service for centos 7 based os's and to install run:
```
./copy_install_and_start_as_service.sh
```
