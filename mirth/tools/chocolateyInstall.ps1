$packageName='mirth'
$fileType = 'exe'
$url = 'http://downloads.mirthcorp.com/connect/3.2.0.7628.b1617/mirthconnect-3.2.0.7628.b1617-windows.exe'
$silentArgs = '-q -console'

Install-ChocolateyPackage $packageName $fileType "$silentArgs" "$url"