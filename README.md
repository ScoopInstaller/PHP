# PHP Bucket for [Scoop Installer](http://scoop.sh)

## Feature
* All PHP versions from *v5.2* to *v8.1*
* Persistent custom configuration files
* Auto update enabled

## Usage
1. Add the bucket with `scoop bucket add php`
2. Install your prefered PHP version with `scoop install php/php7.1.5`


## Tips:

Fresh install was the clue, first time installing scoop on a new install. Opening command prompt instead of powershell and running php showed the error.
MSVCR110.dll is missing from your computer

http://www.microsoft.com/en-us/download/details.aspx?id=30679 to install Visual C++ Redistributable for Visual Studio 2012 Update 4 fixed that.

Silly thing to over look but I'll close the issue and keep the solution just in case.

FOr more details: https://github.com/ScoopInstaller/Scoop/issues/594#issuecomment-164535343
