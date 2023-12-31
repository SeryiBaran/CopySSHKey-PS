Import-Module Pansies

<#
 .Synopsis
  Copies public SSH key to remote server.

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
#    ssh $RemoteHost -p $RemotePort "mkdir ~/.ssh"
    ssh $RemoteHost -p $RemotePort "mkdir ~/.ssh; chmod 700 ~/.ssh; touch ~/.ssh/authorized_keys; chmod 600 ~/.ssh/authorized_keys; echo "$(Get-Content $KeyFile)" >> ~/.ssh/authorized_keys"
  }
  catch {
    Write-Error "Oh, error occurred:"
    Write-Error $_
    break
  }

  Write-Host "Succesfully copied!" -ForegroundColor green
}
