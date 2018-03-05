#!/usr/bin/env bash

BASE=haproxy
VERSIONS="

1
1.4
1.5
1.6
1.7
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
