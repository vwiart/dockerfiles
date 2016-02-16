#!/bin/bash

TARGET_DIR=$(pwd)/target
BACKUP_DIR=/home/docker-backup

function checkVolumeName() {
	VOLUME_NAME=$1
	for vol in $(sudo docker volume ls -q)
	do
		if [ "$VOLUME_NAME" == "$vol" ]; then
			return 1
		fi
	done
	return 0
}

function volume() {
	VOLUME_NAME=$1
	checkVolumeName $VOLUME_NAME
	if [ $? == 0 ]; then
		# Create volume
		sudo docker volume create --name $VOLUME_NAME
	fi
}

volume v-go-synapps-io
