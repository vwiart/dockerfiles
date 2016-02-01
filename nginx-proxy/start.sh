#!/bin/bash
. ./env.sh

sudo docker run -d \
	-p 80:80 \
	-v $(pwd)/conf.d:/etc/nginx/conf.d:ro \
	-v $(pwd)/static:/var/www/html/static \
	--link wordpress-blue \
	--link synapps-io \
	--link synapps-ambari \
	--link hadoop \
	--name $DOCKER_TAG \
	-t $DOCKER_IMAGE_NAME:$DOCKER_IMAGE_VERSION
