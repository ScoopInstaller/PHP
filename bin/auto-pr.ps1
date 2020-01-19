param(
    # overwrite upstream param
    [String]$upstream = "scoopinstaller/php:master"
)

if(!$env:SCOOP_HOME) { $env:SCOOP_HOME = scoop prefix scoop | Resolve-Path }
$autopr = "$env:SCOOP_HOME/bin/auto-pr.ps1"
$dir = "$psscriptroot/../bucket" # checks the parent dir

Invoke-Expression -Command "$autopr -dir $dir -upstream $upstream $($args | ForEach-Object { "$_ " })"
