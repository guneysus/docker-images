#!/usr/bin/env bash

BASE=haproxy
VERSIONS="

1
1.4
1.4.27
1.5
1.5.16
1.5.17
1.5.18
1.6
1.6.4
1.6.5
1.6.6
1.6.7
1.6.8
1.6.9
1.6.10
1.7
1.7.0
1.7.2
1.7.3
1.7.4
1.7.5
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
