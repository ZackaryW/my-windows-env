# Install Scoop
if (!(Get-Command scoop -ErrorAction SilentlyContinue)) {
    Write-Host "Installing Scoop..."
    irm get.scoop.sh -outfile 'install.ps1'
    .\install.ps1 -RunAsAdmin
    Remove-Item install.ps1
} else {
    Write-Host "Scoop already installed"
}

scoop install git
scoop bucket add extras

# Install Python via Scoop
Write-Host "Installing Python..."
scoop install python

# Refresh environment variables
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")

# Install zq package
Write-Host "Installing zq from GitHub..."
python -m pip install git+https://github.com/zackaryw/zq

# refresh environment variables again for python shim
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")

Write-Host "Done!"