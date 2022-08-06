$ErrorActionPreference = 'Stop';

$packageName  = 'Exclaimer Cloud Signature'
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://outlookclient.exclaimer.net/csua/Exclaimer.CloudSignatureUpdateAgent.Install.msi'
$checksum = '9CF93484169471281C6479A14609F62AE7B4267B80B8E26514A461B8372489BC'
$checksumType = 'sha256'

$packageArgs = @{
  packageName   = $packageName
  softwareName  = 'Exclaimer Cloud Signature'
  fileType      = 'msi'
  validExitCodes= @(0)
  url           = $url
  checksum      = $checksum
  checksumType  = $checksumType
  destination   = $toolsDir
}

Install-ChocolateyPackage @packageArgs