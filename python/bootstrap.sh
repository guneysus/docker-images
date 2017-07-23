#!/usr/bin/env bash

BASE=python
VERSIONS="
2
2.7
2.7.11
2.7.12
2.7.13
3
3.3
3.3.6
3.4
3.4.4
3.4.5
3.4.6
3.5
3.5.1
3.5.2
3.5.3
3.6
3.6.0
3.6.1
3.6.2
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
