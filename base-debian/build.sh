#!/bin/bash
. ./env.sh

if [[ $1 == "--no-cache" ]]; then
	sudo docker build --no-cache -t $DOCKER_IMAGE_NAME:$DOCKER_IMAGE_VERSION .
else
	sudo docker build -t $DOCKER_IMAGE_NAME:$DOCKER_IMAGE_VERSION .
fi
