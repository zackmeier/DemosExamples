<#
.SYNOPSIS
Short description

.DESCRIPTION
Long description

.PARAMETER ComputerName
Parameter description

.EXAMPLE
An example

.NOTES
General notes
#>
function New-VM {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]                              # parameter is required
        [ValidateScript({ $_ -match "itd*" })]                      # ComputerName must start with "itd"
        [ValidateScript({ $_ -match "(.+?)(?=\.)" })]               # regex FQDN
        [ValidateScript({ $_.split('.')[0].Length -le 15 })]        # the hostname must be 15 characters or less
        [string[]]                                                  # input will be string, or array of string
        $ComputerName                                               # variable name
    )
    
    begin {
        
    }
    
    process {
        Write-Host ("New AD computer object will be named " + $ComputerName.split('.')[0])
        Write-Host "The FQDN of the new machine will be $ComputerName"
    }
    
    end {
        
    }
}