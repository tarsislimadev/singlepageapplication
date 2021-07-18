#!/bin/sh

IMAGE_NAME='tmvdl/spa-server'

CURRENT_DIR=$(pwd)
YMD=$(date +%Y%m%d)
YM=$(date +%Y%m)

for TAG in $@; do
  docker build -t $IMAGE_NAME:$TAG $CURRENT_DIR/tags/$TAG/
  docker tag $IMAGE_NAME:$TAG $IMAGE_NAME:$TAG-$YMD
  docker tag $IMAGE_NAME:$TAG $IMAGE_NAME:$TAG-$YM
done
