#!/bin/bash
. ./env.sh

function chkNetwork() {
        sudo docker network inspect $NETWORK_NAME &> /dev/null
        if [ $? == 1 ]; then
		echo "creating network $NETWORK_NAME"
                sudo docker network create --driver bridge $NETWORK_NAME
        fi
}
chkNetwork

sudo docker run -d \
	-p 80:80 \
	-v $(pwd)/conf.d:/etc/nginx/conf.d:ro \
	-v $(pwd)/static:/var/www/html/static:ro \
	--net=synapps \
	--name $DOCKER_TAG \
	-t $DOCKER_IMAGE_NAME:$DOCKER_IMAGE_VERSION
