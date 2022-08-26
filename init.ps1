#!/usr/bin/env pwsh

Param(
    [switch]$Restore
)

$ErrorActionPreference = 'Stop'

if (!$Restore) {
    git config --local core.hooksPath .githooks
    git config --local core.autocrlf true
    git config --local core.ignorecase false
    git config --local core.longpaths true
}

dotnet tool restore
dotnet clean
