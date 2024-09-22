#!/bin/bash

# Deploys the microservices to Kubernetes.

set -eu  # Exit on unset variables and errors

# Ensure DATABASE_URL is set
: "${DATABASE_URL:?DATABASE_URL is not set}"
: "${CONTAINER_REGISTRY:?CONTAINER_REGISTRY is not set}"
: "${VERSION:?VERSION is not set}"

echo "Using DATABASE_URL: $DATABASE_URL"
echo "Using CONTAINER_REGISTRY: $CONTAINER_REGISTRY"
echo "Using VERSION: $VERSION"

# Apply the deployment and service configurations
echo "Substituting YAML for book_catalog_deployment.yaml"
envsubst < ./kubernetes/book_catalog_deployment.yaml | tee /tmp/book_catalog_deployment.yaml | kubectl apply -f -

echo "Substituting YAML for inventory_management_deployment.yaml"
envsubst < ./kubernetes/inventory_management_deployment.yaml | tee /tmp/inventory_management_deployment.yaml | kubectl apply -f -

echo "Deployment completed successfully."
