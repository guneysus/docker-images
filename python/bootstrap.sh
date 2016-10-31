#!/usr/bin/env bash

images="3.6 \
        3.5.2 \
        3.4.5 \
        3.3.6 3 \
        2.7.12"
mkdir -p $images

for image in $images
do
  IMAGE=python:$image-alpine
  docker pull $IMAGE && \
  echo FROM $IMAGE > $image/Dockerfile && \
  docker push guneysu/$IMAGE && \
  docker build -t guneysu/$IMAGE $image&

# __DOCKER=$(cat <<EOF
# $image:
#   @docker build -t guneysu/$IMAGE $image
#   @docker push guneysu/$IMAGE
# EOF
# )

done
wait