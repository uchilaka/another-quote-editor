$shellProfilePath = "$HOME/.config/powershell/Microsoft.PowerShell_profile.ps1"
# Open the profile file in the default editor if it exists
if (-not (Test-Path -Path $shellProfilePath)) {
    Write-Host "Creating shell profile at $shellProfilePath"
    New-Item -ItemType File -Path $shellProfilePath -Force
}
# Open shell profile in the default editor
Start-Process $shellProfilePath
