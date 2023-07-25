# CopySSHKey-PS

Tiny PowerShell module for copy public SSH key to remote server (`ssh-copy-id` analog for Windows).

## Installing

```powershell
Install-Module CopySSHKey -Scope CurrentUser -AllowClobber
```

## Usage

> Don't forget to import module =)
>
> ```powershell
> Import-Module CopySSHKey
> ```

### `Copy-SSHKey`

```
NAME
    Copy-SSHKey

SYNOPSIS
    Checks new NodeJS versions.


SYNTAX
    Copy-SSHKey [-RemoteHost] <String> [[-KeyFile] <String>] [[-RemotePort] <Int32>] [<CommonParameters>]


DESCRIPTION


PARAMETERS
    -RemoteHost <String>
        Remote host and user

        Required?                    true
        Position?                    1
        Default value
        Accept pipeline input?       false
        Accept wildcard characters?  false

    -KeyFile <String>
        Public key local path

        Required?                    false
        Position?                    2
        Default value                "$HOME/.ssh/id_rsa.pub"
        Accept pipeline input?       false
        Accept wildcard characters?  false

    -RemotePort <Int32>
        Remote SSH port

        Required?                    false
        Position?                    3
        Default value                22
        Accept pipeline input?       false
        Accept wildcard characters?  false

    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216).

INPUTS

OUTPUTS

    -------------------------- EXAMPLE 1 --------------------------

    PS > Copy-SSHKey user@192.168.0.92







RELATED LINKS

```
