#!/bin/bash

# Navigate to the Terraform configuration directory
cd terraform/

# Apply the Terraform configuration with auto-approval
terraform apply -auto-approve \
  -var="version=${VERSION}" \
  -var="container_registry=${CONTAINER_REGISTRY}" \
  -var="registry_un=${REGISTRY_UN}" \
  -var="registry_pw=${REGISTRY_PW}" \
  -var="database_url=${DATABASE_URL}" \
  -var="kube_config=${KUBE_CONFIG}"
