#!/bin/bash
set -e
VERSION_LABEL=${1-"$VERSION_LABEL"}
VERSION_LABEL=${VERSION_LABEL-""}
echo "Publishing the 'latest' version & pinning it at version: $VERSION_LABEL"

docker build -t docker-phantom-node:latest .
docker tag docker-phantom-node:latest justsml/docker-phantom-node:latest
if [ "$VERSION_LABEL" != "" ]; then
  # if you want a tagged version
  docker tag docker-phantom-node:latest docker-phantom-node:$VERSION_LABEL
  docker tag docker-phantom-node:$VERSION_LABEL justsml/docker-phantom-node:$VERSION_LABEL
fi
docker push justsml/docker-phantom-node

