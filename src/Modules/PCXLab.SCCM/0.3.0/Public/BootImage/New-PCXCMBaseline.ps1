function New-PCXCMBaseline{
    param (
        [Parameter(Mandatory=$true, Position=0)] 
        [String]$Name,

        [Parameter(Mandatory=$true, Position=0)] 
        [String]$Description
    )
    begin {
        Message-PCXBegin
    }
    process {
                try {
                    Write-Host "We are creating new Baselines : $Name " -ForegroundColor Yellow
                    New-CMBaseline -Name $Name -Description $Description
                    Write-Host "Baseline $Name is created." -ForegroundColor Green
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
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/new-cmbaseline?view=sccm-ps

Syntax :
Set-CMBaseline
    -Name <String>
    [-AddBaseline <String[]>]
    [-AddCategory <String[]>]
    [-AddOptionalConfigurationItem <String[]>]
    [-AddOSConfigurationItem <String[]>]
    [-AddProhibitedConfigurationItem <String[]>]
    [-AddRequiredConfigurationItem <String[]>]
    [-AddSoftwareUpdate <String[]>]
    [-AllowComanagedClients <Boolean>]
    [-ClearBaseline]
    [-ClearOptionalConfigurationItem]
    [-ClearOSConfigurationItem]
    [-ClearProhibitedConfigurationItem]
    [-ClearRequiredConfigurationItem]
    [-ClearSoftwareUpdate]
    [-Description <String>]
    [-DesiredConfigurationDigestPath <String>]
    [-NewName <String>]
    [-PassThru]
    [-RemoveBaseline <String[]>]
    [-RemoveCategory <String[]>]
    [-RemoveOptionalConfigurationItem <String[]>]
    [-RemoveOSConfigurationItem <String[]>]
    [-RemoveProhibitedConfigurationItem <String[]>]
    [-RemoveRequiredConfigurationItem <String[]>]
    [-RemoveSoftwareUpdate <String[]>]
    [-DisableWildcardHandling]
    [-ForceWildcardHandling]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]
    
Direct Command Line:
    New-CMBaseline -Name "Windows_Baseline1" -Description "Baseline for Windows"

Function Usage Example:
   New-PCXCMBaseline -Name "Windows_Baseline1" -Description "Baseline for Windows"
#>
   New-PCXCMBaseline -Name "Test BaseLine Parent" -Description "Baseline for Windows"
   New-PCXCMBaseline -Name "Test BaseLine Child" -Description "Baseline for Windows"
