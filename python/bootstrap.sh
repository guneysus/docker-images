#!/usr/bin/env bash

BASE=python
VERSIONS="
2.7
3.3
3.4
3.5
3.6
3.7
3.8
3.9
"
for VERSION in $VERSIONS
do
  IMAGE=guneysu/$BASE:$VERSION
  ORIGIN=$BASE:$VERSION-alpine

  docker pull $ORIGIN && \
  mkdir -p $VERSION && \
  echo FROM $ORIGIN > $VERSION/Dockerfile && \
  docker build -t $IMAGE $VERSION && \
  docker push $IMAGE&

done
wait
