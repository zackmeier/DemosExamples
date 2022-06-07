function Get-Stuff {
    [CmdletBinding()]
    param (
        [Parameter(
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true)]
        [int[]]
        $Number
    )
    
    begin {
        Write-Verbose "Begin"
    }
    
    process {
        Write-Verbose "Process"
        ForEach ($n in $Number) {
            Write-Host "This number is $n"
            $nDouble = $n * 2
            Write-Verbose "That number doubled is $nDouble"
        }
    }
    
    end {
        Write-Verbose "End"
    }
}


Get-Stuff -Number 1,2,3   # Process block runs once, but loops through all entires
1,2,3 | Get-Stuff         # Process block runs three times, one entry per loop with three loops

# output is the same, as verbose are in different output stream
Get-Stuff -Number 1,2,3 -Verbose
1,2,3 | Get-Stuff -Verbose
