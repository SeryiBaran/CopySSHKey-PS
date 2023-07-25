Import-Module Pansies

<#
 .Synopsis
  Checks new NodeJS versions.

 .Parameter RemoteHost
  Remote host and user

 .Parameter KeyFile
  Public key local path

 .Parameter RemotePort
  Remote SSH port

 .Example
  Copy-SSHKey user@192.168.0.92
#>
function Copy-SSHKey {
  [CmdletBinding()]
  param(
    [Parameter(Mandatory = $true)]
    [alias("h")]
    [string]
    $RemoteHost,

    [alias("k")]
    [string]
    $KeyFile = "$HOME/.ssh/id_rsa.pub",

    [alias("p")]
    [int]
    $RemotePort = 22
  )

  try {
    Get-Content $KeyFile | ssh $RemoteHost -p $RemotePort "cat >> .ssh/authorized_keys"
  }
  catch {
    Write-Error "Oh, error occurred:"
    Write-Error $_
    break
  }

  Write-Host "Succesfully copied!" -ForegroundColor green
}
