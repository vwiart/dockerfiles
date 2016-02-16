#!/bin/bash
. ./env.sh

sudo docker run -d \
	-v v-go-synapps-io:/home/synapps:ro \
	--name $DOCKER_TAG \
	-t $DOCKER_IMAGE_NAME:$DOCKER_IMAGE_VERSION
