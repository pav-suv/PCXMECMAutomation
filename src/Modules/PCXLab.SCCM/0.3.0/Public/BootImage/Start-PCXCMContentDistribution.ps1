function Start-PCXCMContentDistribution {
    param (
        [Parameter(Mandatory = $true, Position = 0)] 
        [String]$BootImageName,

        [Parameter(Mandatory = $true, Position = 1)] 
        [String]$DistributionPointGroupName
    )
    begin {
        Write-PCXMessageBegin

    }
    process {
        try {
            Write-Host "Distibution group name : $DistributionPointGroupName" -ForegroundColor Yellow
            Start-CMContentDistribution -BootImageName $BootImageName -DistributionPointGroupName $DistributionPointGroupName
            Write-Host "Dp group $DistributionPointGroupName is added." -ForegroundColor Green
            Write-Host "We tried and successfuly added................."  -ForegroundColor Magenta
        }
        catch {
            Write-Host $_ -ForegroundColor Red
        }
        finally {
            <#Do this after the try block regardless of whether an exception occurred or not#>
            Write-Host "This is finaly block runs even for success and even for failure" -ForegroundColor Cyan
        }
    }
    end {
        Write-PCXMessageEnd
    }
}

<#
Ms-Document :
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/start-cmcontentdistribution?view=sccm-ps

Syntax :
Start-CMContentDistribution
    -BootImageName <String[]>
    [-CollectionName <String[]>]
    [-DistributionPointGroupName <String[]>]
    [-DistributionPointName <String[]>]
    [-DisableWildcardHandling]
    [-ForceWildcardHandling]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]

Direct Command:
    Start-CMContentDistribution -BootImageName "Boot Image(x64)" -DistributionPointGroupName "ALL Mangalore DPs"

Function Usage example:
    Start-PCXCMContentDistribution -BootImageName "Boot Image(x64)" -DistributionPointGroupName "ALL Mangalore Group"
#>