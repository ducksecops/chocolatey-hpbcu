$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://ftp.hp.com/pub/softpaq/sp107501-108000/sp107705.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE' #only one of these: exe, msi, msu
  url           = $url
 

  softwareName  = 'HP BIOS Config Utility*'

  checksum      = '5469024CE59DD283242E0B3781F100548831C0C3471F808B203DE7A39270A712'
  checksumType  = 'sha256'

  silentArgs   = '/s'
}

Install-ChocolateyPackage @packageArgs
