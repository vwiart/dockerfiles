#!/bin/bash
. ./env.sh
sudo docker run --rm \
	-it $DOCKER_IMAGE_NAME:$DOCKER_IMAGE_VERSION /bin/bash 
