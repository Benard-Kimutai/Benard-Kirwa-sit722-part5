#!/bin/bash

# Pushes Docker images to the container registry.

set -u
: "$CONTAINER_REGISTRY"
: "$REGISTRY_UN"
: "$REGISTRY_PW"
: "$VERSION"

echo $REGISTRY_PW | docker login $CONTAINER_REGISTRY --username $REGISTRY_UN --password-stdin

# Push the images
docker push $CONTAINER_REGISTRY/book_catalog:$VERSION
docker push $CONTAINER_REGISTRY/inventory_management:$VERSION
