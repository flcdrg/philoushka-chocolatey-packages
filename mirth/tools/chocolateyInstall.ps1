$packageName='mirth'
$fileType = 'exe'
$url = 'http://downloads.mirthcorp.com/connect/3.3.1.7856.b91/mirthconnect-3.3.1.7856.b91-windows.exe'
$silentArgs = '-q -console'

Install-ChocolateyPackage $packageName $fileType "$silentArgs" "$url"