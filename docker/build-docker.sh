#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-fusionpay/fusiond-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/fusiond docker/bin/
cp $BUILD_DIR/src/fusion-cli docker/bin/
cp $BUILD_DIR/src/fusion-tx docker/bin/
strip docker/bin/fusiond
strip docker/bin/fusion-cli
strip docker/bin/fusion-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
