#!/usr/bin/env pwsh

if (Test-Path -Path ./workspaces) {
    Get-ChildItem ./workspaces | Select-Object Name
} else {
    Write-Error "You Must Run from the root folder of this repository"
}
