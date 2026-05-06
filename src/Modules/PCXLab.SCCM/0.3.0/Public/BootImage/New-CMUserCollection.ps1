function New-PCXCMUserCollection {
    param (
        [Parameter(Mandatory = $true, Position = 0)] 
        [String]$Name,

        [Parameter(Mandatory = $true, Position = 0)] 
        [String]$LimitingCollectionName
    )
    begin {
        Write-PCXMessageBegin
    }
    process {
        try {
            Write-Host "We are creating new UserCollection : $Name " -ForegroundColor Yellow
            New-CMUserCollection -Name $Name -LimitingCollectionName $LimitingCollectionName
            Write-Host "UserCollection $Name is created." -ForegroundColor Green
            Write-Host "We tried and successfuly created................."  -ForegroundColor Magenta
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
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/new-cmusercollection?view=sccm-ps

Syntax :
New-CMUserCollection
    -LimitingCollectionName <String>
    -Name <String>
    [-Comment <String>]
    [-RefreshSchedule <IResultObject>]
    [-RefreshType <CollectionRefreshType>]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]

Direct Command Line:
New-CMUserCollection -Name "All Users and groups" -LimitingCollectionName "All Users and User Groups"

Function Usage Example:
New-PCXCMUserCollection -Name "All Users and groups" -LimitingCollectionName "All Users and User Groups"
#>




