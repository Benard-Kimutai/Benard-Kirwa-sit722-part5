#!/bin/bash

# Navigate to the Terraform configuration directory
cd terraform/

# Apply the Terraform configuration with auto-approval and pass variables
terraform apply -auto-approve \
  -var="azure_client_id=${AZURE_CLIENT_ID}" \
  -var="azure_client_secret=${AZURE_CLIENT_SECRET}" \
  -var="azure_tenant_id=${AZURE_TENANT_ID}" \
  -var="azure_subscription_id=${AZURE_SUBSCRIPTION_ID}"
