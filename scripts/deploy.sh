#!/bin/bash

# Deploys the microservices to Kubernetes.

set -eu  # Exit on unset variables and errors

# Ensure DATABASE_URL is set
: "${DATABASE_URL:?DATABASE_URL is not set}"


echo "Using DATABASE_URL: $DATABASE_URL"


# Apply the deployment and service configurations
echo "Substituting YAML for book_catalog_deployment.yaml"
envsubst < ./kubernetes/book_catalog_deployment.yaml | tee /tmp/book_catalog_deployment.yaml | kubectl apply -f -

echo "Substituting YAML for inventory_management_deployment.yaml"
envsubst < ./kubernetes/inventory_management_deployment.yaml | tee /tmp/inventory_management_deployment.yaml | kubectl apply -f -

echo "Deployment completed successfully."
