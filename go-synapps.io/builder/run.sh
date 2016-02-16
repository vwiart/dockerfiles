#!/bin/bash
. ./env.sh
sudo docker run --rm \
	-v v-go-synapps-io:/home/golang/target \
	-it $DOCKER_IMAGE_NAME:$DOCKER_IMAGE_VERSION 
