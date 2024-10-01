#!/bin/bash

# Navigate to the Terraform configuration directory
cd terraform/

# Apply the Terraform configuration with auto-approval and pass variables
terraform apply -auto-approve
