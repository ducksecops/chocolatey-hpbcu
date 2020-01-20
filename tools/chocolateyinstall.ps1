$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://ftp.hp.com/pub/softpaq/sp100501-101000/sp100599.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE' #only one of these: exe, msi, msu
  url           = $url
 

  softwareName  = 'HP BIOS Config Utility*'

  checksum      = '3B38FABC8F27E85687E2479DCEC9AF22C069EAF88C701E4D4811433003CD038D'
  checksumType  = 'sha256'

  silentArgs   = '/s'
}

Install-ChocolateyPackage @packageArgs