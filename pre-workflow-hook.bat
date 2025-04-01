echo Running pre-workflow hook...

rem Run terraform init
echo Running terraform init...
terraform init
if %ERRORLEVEL% NEQ 0 (
    echo Terraform init failed.
    exit /b 1
)

echo Pre-workflow hook completed successfully.
