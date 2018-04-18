function New-Greeting() {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$true,
            ValueFromPipeline=$true)]
        [string]$Name,

        [Parameter()]
        [String]$Greeting
    )

    Begin {
        If ($Null -eq $Greeting) {$Greeting = 'Hello'}
    }

    process {
        Write-Output "$Greeting $Name"
    }
}
