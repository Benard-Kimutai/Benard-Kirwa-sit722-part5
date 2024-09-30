#!/bin/bash

# Navigate to the Terraform configuration directory
cd terraform/

# Print variable values for debugging
echo "Version: ${VERSION}"
echo "Container Registry: ${CONTAINER_REGISTRY}"
echo "App Name: ${APP_NAME}"
echo "App Version: ${APP_VERSION}"

# Apply the Terraform configuration with auto-approval and pass variables
terraform apply -auto-approve \
  -var="version=${VERSION}" \
  -var="container_registry=${CONTAINER_REGISTRY}" \
  -var="registry_un=${REGISTRY_UN}" \
  -var="registry_pw=${REGISTRY_PW}" \
  -var="database_url=${DATABASE_URL}" \
  -var="kube_config=${KUBE_CONFIG}" \
  -var="app_name=${APP_NAME}" \
  -var="app_version=${APP_VERSION}"
