#!/bin/bash
. ./env.sh

sudo docker build --no-cache -t $DOCKER_IMAGE_NAME:$DOCKER_IMAGE_VERSION .
