Write-Host "Current working directory: $(Get-Location)"
Write-Host "Location of convert_files.m: $(Get-Location)\convert_files.m"
& "C:\Program Files\MATLAB\R2022b\bin\matlab.exe" -batch "addpath('.'); convert_files"
