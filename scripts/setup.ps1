# Stop the script if any step fails
$ErrorActionPreference = 'Stop'

# Install .NET SDK if not already installed
Write-Host "Checking for .NET SDK..."
if (-Not (Get-Command "dotnet" -ErrorAction SilentlyContinue)) {
    Write-Host "Installing .NET SDK..."
    # Assuming Chocolatey is used as a package manager on Windows
    choco install dotnet-sdk
}

# Install Docker if not already installed
Write-Host "Checking for Docker..."
if (-Not (Get-Command "docker" -ErrorAction SilentlyContinue)) {
    Write-Host "Installing Docker..."
    # Install Docker Desktop for Windows
    choco install docker-desktop
}

Write-Host "Setup completed successfully!"
