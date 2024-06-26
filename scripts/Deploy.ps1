# Stop the script if any step fails
$ErrorActionPreference = 'Stop'

# Get the directory of this script
$Dir = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent

# Navigate to the solution directory
Set-Location $Dir\..

# Run tests
Write-Host "Running tests..."
dotnet test

# Ensure the build and publish are only done if tests pass
Write-Host "Building and publishing the application..."
dotnet publish -c Release -o out

# Build Docker image
Write-Host "Building Docker image..."
docker build -t superservice:latest .

# Run Docker container
Write-Host "Running Docker container..."
docker run -d -p 8080:80 --name my-superservice superservice:latest

Write-Host "Application deployed successfully!"
