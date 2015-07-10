$packageName='mirth'
$fileType = 'exe'
$url = 'http://downloads.mirthcorp.com/connect/3.2.2.7694.b68/mirthconnect-3.2.2.7694.b68-windows.exe'
$silentArgs = '-q -console'

Install-ChocolateyPackage $packageName $fileType "$silentArgs" "$url"