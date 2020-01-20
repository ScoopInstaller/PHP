if(!$env:SCOOP_HOME) { $env:SCOOP_HOME = scoop prefix scoop | Resolve-Path }
$missing_checkver = "$env:SCOOP_HOME/bin/missing-checkver.ps1"
$dir = "$psscriptroot/../bucket" # checks the parent dir
Invoke-Expression -Command "$missing_checkver -dir $dir $($args | ForEach-Object { "$_ " })"
