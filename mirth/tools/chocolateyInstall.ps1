$ErrorActionPreference = 'Stop'; # stop on all errors

$packageName='mirth'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://downloads.mirthcorp.com/connect/3.3.2.7911.b104/mirthconnect-3.3.2.7911.b104-windows.exe'
$url64      = 'http://downloads.mirthcorp.com/connect/3.3.2.7911.b104/mirthconnect-3.3.2.7911.b104-windows-x64.exe'
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
  checksum      = 'F8F5252CE659AEB8705F61060DC2C915'
  checksumType  = 'md5' #default is md5, can also be sha1
  checksum64    = 'A974AF301E0EDCC819DC7E727956A562'
  checksumType64= 'md5' #default is checksumType
}

Install-ChocolateyPackage @packageArgs