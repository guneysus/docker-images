#!/usr/bin/env bash

BASE=nginx
VERSIONS="1.10 \
          stable \
          1.10.1 \
          1.11.5 \
          1.11 \
          1 \
          1.10.1 \
          1.11.4 \
          1.11.3 \
          1.11.1 \
          1.11.0 \
          1.10.2 \
          1.9.15 \
          1.9.14 \
          1.9 \
          1.8.1 \
          1.8 \
          "
mkdir -p $VERSIONS

for VERSION in $VERSIONS
do
  IMAGE=guneysu/$BASE:$VERSION
  ORIGIN=$BASE:$VERSION-alpine

  docker pull $ORIGIN && \
  echo FROM $ORIGIN > $VERSION/Dockerfile && \
  docker build -t $IMAGE $VERSION && \
  docker push $IMAGE&

done
wait