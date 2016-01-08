#!/bin/bash
. ./env.sh

sudo docker run -d \
	-v /sys/kernel/security:/sys/kernel/security:ro \
	--security-opt apparmor:docker-default \
	--name $DOCKER_TAG \
	-t $DOCKER_IMAGE_NAME:$DOCKER_IMAGE_VERSION
