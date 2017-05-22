# Create directory for custom PHP configuration
$confd = "$dir\conf.d"

if (!(Test-Path $confd)) {
    (New-Item -Type directory $confd) | Out-Null
}

# (Get-Content "$dir\php.ini-development") | Where-Object { $_ -notmatch '^;' }  | ? {$_.trim() -ne '' } | Set-Content "$persist_dir\development.ini"

# Enable extensions to be found in installation-relative folder (the default is to search C:/php)
(Get-Content "$dir\php.ini-production") | ForEach-Object { $_ -replace '; extension_dir = "ext"', 'extension_dir = "ext"' } | Set-Content "$dir\php.ini"