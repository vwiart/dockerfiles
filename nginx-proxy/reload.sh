#!/bin/bash
. ./env.sh

sudo docker exec -it $DOCKER_TAG service nginx reload
