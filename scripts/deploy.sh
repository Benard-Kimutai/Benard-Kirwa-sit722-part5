#!/bin/bash

# Deploys the microservices to Kubernetes.

set -u

# If DATABASE_URL is not set, assign a default value or error out
DATABASE_URL="${DATABASE_URL:-'your-database-url-here'}"

# Set your actual DATABASE_URL
export DATABASE_URL='postgresql://part5_pjux_user:Yv9ZvKW7HyXWk2bIHP8FikyXVwH3wPvN@dpg-crniued6l47c73ah5nug-a.oregon-postgres.render.com/part5_pjux'

# Apply the deployment and service configurations
envsubst < ./kubernetes/book_catalog_deployment.yaml | kubectl apply -f -
envsubst < ./kubernetes/inventory_management_deployment.yaml | kubectl apply -f -
