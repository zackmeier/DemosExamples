function New-VM {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]                              # parameter is required
        [ValidateScript({ $_ -match "itd*" })]                      # ComputerName must start with "itd"
        [ValidateScript({ $_ -match "(.+?)(?=\.)" })]               # regex FQDN
        [ValidateScript({ $_ -match ".contoso.com" -or $_ -match ".contoso.dev" })]  # ComputerName must end with ".contoso.com or .contoso.gov"
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


New-VM -ComputerName ilikecookies
New-VM -ComputerName xyzilikecoookies