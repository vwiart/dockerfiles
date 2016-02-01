#!/bin/bash
. ./env.sh

sudo docker run -d \
	-v v-go-source:/home/golang/src \
	--name $DOCKER_TAG \
	-t $DOCKER_IMAGE_NAME:$DOCKER_IMAGE_VERSION
