#!/bin/bash

echo "		||||||||| |         |  |        ||||||||        ||      |||    |||
		|       | |         |  |        |       |      |  |     |  |  |  |
		||||||||| ||||||||  |  |        |        |    ||||||    |   ||   | 
		|         |      |  |  |        |       |    |      |   |        |
		|         |      |  |  |||||||  ||||||||    |        |  |        |"
		
echo "***Will attempt to stop docker-machine if running...***"
docker-machine stop
echo "************Restarting machine******************"
docker-machine start default
echo "*******Please copy the new ip address from the Env:DOCKER_HOST variable below*******"
docker-machine env
#$Env:DOCKER_HOST		
#build docker for node and mongo js application
echo "***starting up build and run processes for node and mongo docker app***"
docker-compose build
docker-compose up

