# Navigate to the script's directory
$scriptPath = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $scriptPath

# Activate the virtual environment
Write-Host "Activating virtual environment..."
& "$scriptPath\venv\Scripts\Activate.ps1"

# Run MkDocs deployment
Write-Host "Running MkDocs deployment..."
mkdocs build

# Git operations
Write-Host "Adding changes to Git..."
git add .

Write-Host "Committing changes..."
git commit -m "Update MkDocs site"

Write-Host "Pushing to GitHub..."
git push origin indev

exit
