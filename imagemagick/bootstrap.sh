#!/usr/bin/env bash

BASE=imagemagick
VERSION=latest
IMAGE=guneysu/$BASE:$VERSION
docker build -t $IMAGE . && docker push $IMAGE&
