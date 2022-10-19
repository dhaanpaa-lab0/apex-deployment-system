#!/usr/bin/env pwsh
param (
    # Commit ID from GIT
    [Parameter(Mandatory = $true)]
    [string]
    $CommitId
    )

$comitedFiles = & git diff-tree --no-commit-id --name-only -r $CommitId
$comitedFiles