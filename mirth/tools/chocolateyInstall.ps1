$packageName='mirth'
$fileType = 'exe'
$url = 'http://downloads.mirthcorp.com/connect/3.3.0.7801.b1804/mirthconnect-3.3.0.7801.b1804-windows.exe'
$silentArgs = '-q -console'

Install-ChocolateyPackage $packageName $fileType "$silentArgs" "$url"