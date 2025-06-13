$shellProfilePath = "$HOME/.config/powershell/Microsoft.PowerShell_profile.ps1"
$chocoBinPath = (Get-Command choco).Source.Replace('choco.exe', '')
$miseCommand = (Get-Command mise).Source
# Check if the profile file exists, if not create it
if (-not (Test-Path -Path $shellProfilePath)) {
    New-Item -ItemType File -Path $shellProfilePath -Force
} else {
    # If the profile file exists and contains "Start Mise Activation in Powershell", open the file in the editor
    if (Get-Content -Path $shellProfilePath | Select-String -Pattern 'Start Mise Activation in Powershell') {
        Write-Host "Mise activation already configured in $shellProfilePath"
        Write-Host "Opening $shellProfilePath in your default editor..."
        Start-Process -FilePath $shellProfilePath
        exit
    }
}
Write-Output "Configuring Mise activation in $shellProfilePath..."
Write-Output '############ Start Mise Activation in Powershell ############' >> $shellProfilePath
Write-Output "$miseCommand activate mise activate pwsh | Out-String | Invoke-Expression" >> $shellProfilePath
Write-Output 'Write-Output "⚡Activated mise "' >> $shellProfilePath
Write-Output '############ End Mise Activation in Powershell ############' >> $shellProfilePath
Write-Output "Done! Please restart your PowerShell session to apply the changes."
