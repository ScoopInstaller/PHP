if(!$env:SCOOP_HOME) { $env:SCOOP_HOME = scoop prefix scoop | Resolve-Path }
$checkver = "$env:SCOOP_HOME/bin/checkver.ps1"
$dir = "$psscriptroot/../bucket" # checks the parent dir
Invoke-Expression -Command "$checkver -dir $dir $($args | ForEach-Object { "$_ " })"
