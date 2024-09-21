#!/bin/bash

# Builds Docker images for both microservices.

set -u  # Treat unset variables as an error
: "$CONTAINER_REGISTRY"
: "$VERSION"

# Build the book catalog image
docker build -t $CONTAINER_REGISTRY/book_catalog:$VERSION ./book_catalog

# Build the inventory management image
docker build -t $CONTAINER_REGISTRY/inventory_management:$VERSION ./inventory_management
