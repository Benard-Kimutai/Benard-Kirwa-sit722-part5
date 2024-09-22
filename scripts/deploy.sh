#!/bin/bash

# Deploys the microservices to Kubernetes.

set -u
: "${DATABASE_URL}"
: "${CONTAINER_REGISTRY}"
: "${VERSION}"

# Export variables
export DATABASE_URL CONTAINER_REGISTRY VERSION

# Apply the deployment and service configurations
envsubst < ./kubernetes/book_catalog_deployment.yaml | kubectl apply -f -
envsubst < ./kubernetes/inventory_management_deployment.yaml | kubectl apply -f -
