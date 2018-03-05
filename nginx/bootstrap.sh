#!/usr/bin/env bash

BASE=nginx
VERSIONS="
1.13
1.12
1.11
1.10
1.9
1.8
1
stable
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
