$ErrorActionPreference = 'Stop'; # stop on all errors

$packageName='mirth'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://downloads.mirthcorp.com/connect/3.4.0.8000.b1959/mirthconnect-3.4.0.8000.b1959-windows.exe'
$url64      = 'http://downloads.mirthcorp.com/connect/3.4.0.8000.b1959/mirthconnect-3.4.0.8000.b1959-windows-x64.exe'
$silentArgs = ''

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  #MSI
  silentArgs    = "-q -console" 

  # optional, highly recommended
  softwareName  = 'Mirth Connect *' #part or all of the Display Name as you see it in Programs and Features. It should be enough to be unique
  checksum      = 'E2E12D5A6ECF68984C6FC0F2767F12CE'
  checksumType  = 'md5' #default is md5, can also be sha1
  checksum64    = '212E5BA1EBE48A1EEF8DA0384C5D2359'
  checksumType64= 'md5' #default is checksumType
}

Install-ChocolateyPackage @packageArgs