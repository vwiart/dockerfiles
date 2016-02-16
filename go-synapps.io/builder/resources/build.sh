#!/bin/bash
PROJECT_NAME=go-synapps.io
BUILDER_DIR=$(pwd)
GIT_URL=https://github.com/vwiart/go-synapps.io.git
SRC_DIR=$BUILDER_DIR/src/github.com/vwiart
TARGET_DIR=$BUILDER_DIR/target

# CLEAN TARGET
if [ -d $TARGET_DIR ]; then
	echo "[CLEAN] deleting target dir"
	rm -Rf $TARGET_DIR/*
fi

# DOWNLOAD SOURCE
if [ ! -d $SRC_DIR ]; then
	mkdir -p $SRC_DIR
	cd $SRC_DIR
	echo "[GET] Cloning source from git"
	git clone $GIT_URL --quiet
fi

# BUILD
cd $BUILDER_DIR
mkdir -p $TARGET_DIR

cd $SRC_DIR/$PROJECT_NAME
go build
go install
cd $BUILDER_DIR
cp -R $SRC_DIR/$PROJECT_NAME/config.json $TARGET_DIR
cp -R $SRC_DIR/$PROJECT_NAME/public/ $TARGET_DIR
cp $BUILDER_DIR/bin/$PROJECT_NAME $TARGET_DIR

# CLEANUP
rm -Rf $SRC_DIR
