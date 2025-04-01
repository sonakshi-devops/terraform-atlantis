#!/bin/bash

# Output to track script progress
echo "Running pre-workflow hook"

# Check for a specific environment variable (Example)
if [ -z "$MY_ENV_VAR" ]; then
  echo "Error: MY_ENV_VAR is not set."
  exit 1  # Exit with error code if the variable is not set
fi

# Run Terraform initialization
echo "Running terraform init"
terraform init
if [ $? -ne 0 ]; then
  echo "Terraform init failed."
  exit 1
fi

echo "Pre-workflow hook completed successfully."
