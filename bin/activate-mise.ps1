$shimPath = "$env:USERPROFILE\AppData\Local\mise\shims"
# # List detected shims
# ls $shimPath | ForEach-Object {
#     $shimFile = $_.FullName
#     if (Test-Path $shimFile) {
#         Write-Host "Found shim: $shimFile"
#     } else {
#         Write-Host "Shim not found: $shimFile"
#     }
# }
$currentPath = [Environment]::GetEnvironmentVariable('Path', 'User')
# Check if the shim path already exists in the current PATH
if ($currentPath -like "*$shimPath*") {
    Write-Host "Shim path already exists in PATH: $shimPath"
    exit
}
# If the shim path does not exist, append it to the current PATH
Write-Host "Adding shim path to PATH: $shimPath"
$newPath = $currentPath + ";" + $shimPath
[Environment]::SetEnvironmentVariable('Path', $newPath, 'User')
