$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/forestvpn/cli/releases/download/v0.2.3/fvpn_windows_386.tar.gz'
$url64      = 'https://github.com/forestvpn/cli/releases/download/v0.2.3/fvpn_windows_amd64.tar.gz'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  url64bit      = $url64
  softwareName  = 'fvpn*'
  checksum      = 'fbe3890d38f95869bc426641f2650280e49a671a00c4cf68bcbbfa497b5f4861'
  checksumType  = 'sha256'
  checksum64    = 'aa12bc8fb325635aee88879fcdc6b07fc010fb5ba007d03d87920fe376b1e37d'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs