switch ($args[0]) { 
    53 {"post_install script for php 53 not yet implemented."} 
    54 {"post_install script for php 54 not yet implemented."} 
    55 {"post_install script for php 55 not yet implemented."} 
    56 {"post_install script for php 56 not yet implemented."} 
    70 {"post_install script for php 70 not yet implemented."} 
    71 {
        # Create directory for custom PHP configuration
        $confd = "$dir\conf.d"
        if (!(Test-Path $confd)) {
            (New-Item -Type directory $confd) | Out-Null
        }

        # (Get-Content "$dir\php.ini-development") | Where-Object { $_ -notmatch '^;' }  | ? {$_.trim() -ne '' } | Set-Content "$persist_dir\development.ini"

        # Enable extensions to be found in installation-relative folder (the default is to search C:/php)
        (Get-Content "$dir\php.ini-production") | ForEach-Object { $_ -replace '; extension_dir = "ext"', 'extension_dir = "ext"' } | Set-Content "$dir\php.ini"
    } 
}