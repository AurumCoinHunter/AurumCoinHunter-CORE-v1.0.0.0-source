#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-aurumcoinhunterpay/aurumcoinhunterd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/aurumcoinhunterd docker/bin/
cp $BUILD_DIR/src/aurumcoinhunter-cli docker/bin/
cp $BUILD_DIR/src/aurumcoinhunter-tx docker/bin/
strip docker/bin/aurumcoinhunterd
strip docker/bin/aurumcoinhunter-cli
strip docker/bin/aurumcoinhunter-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
