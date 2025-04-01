@echo off
echo Running pre-workflow hook...

rem Check if AWS credentials or other environment variables are set (optional)
if "%AWS_ACCESS_KEY_ID%"=="" (
    echo Error: AWS credentials are not set.
    exit /b 1
)

rem Check if terraform is installed
terraform --version > nul 2>&1
if errorlevel 1 (
    echo Error: Terraform could not be found.
    exit /b 1
)

echo Terraform found, running terraform init...

rem Run terraform init
terraform init -input=false -upgrade
if errorlevel 1 (
    echo Terraform init failed.
    exit /b 1
)

echo Running terraform plan...

rem Run terraform plan (optional step before apply)
terraform plan -out=tfplan
if errorlevel 1 (
    echo Terraform plan failed.
    exit /b 1
)

echo Pre-workflow hook completed successfully.
