function New-PCXCMOperatingSystemImage{
    param (
        [Parameter(Mandatory=$true, Position=0)] 
        [String]$Name,

        [Parameter(Mandatory=$true, Position=0)] 
        [String]$Path  
    )
    begin {
        Write-Host "Welcome to PCXLab automation" -ForegroundColor Yellow
    }

    process {
                try {
                    Write-Host "We are adding OSImage : $Name " -ForegroundColor Yellow
                    New-CMOperatingSystemImage -Name $Name -Path $Path

                    Write-Host "OSImage $Name is added." -ForegroundColor Green
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
        Write-Host "Thank you - www.pcxlab.com " -ForegroundColor Yellow
    }
}
 
<#
Ms-Document :
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/new-cmoperatingsystemimage?view=sccm-ps

Syntax :
New-CMOperatingSystemImage
    [-Description <String>]
    -Name <String>
    -Path <String>
    [-Index <Int32>]
    [-Version <String>]
    [-DisableWildcardHandling]
    [-ForceWildcardHandling]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]

    
Direct Command line:
    New-CMOperatingSystemImage -Name "Windows 10 latest" -Path "\\192.168.25.214\Package_Source\OSD\OS_Images\REFW10X64-001.wim"

Function usage example:
New-PCXCMOperatingSystemImage -Name "Windows 10 latest" -Path "\\192.168.25.214\Package_Source\OSD\OS_Images\REFW10X64-001.wim"
#>



