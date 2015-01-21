$packageName='mirth'
$fileType = 'exe'
$url = 'http://downloads.mirthcorp.com/connect/3.1.1.7461.b23/mirthconnect-3.1.1.7461.b23-windows.exe'
$silentArgs = '-q -console'

Install-ChocolateyPackage $packageName $fileType "$silentArgs" "$url"