
function New-PCXCMBootImage {
    param (
        [Parameter(Mandatory=$true, Position=0)] 
        [String]$Path,
        
        [Parameter(Mandatory=$true, Position=1)]
        [Int32]$Index,

        [Parameter(Mandatory=$true, Position=2)]
        [String]$Name,

        [Parameter(Mandatory=$true, Position=3)]
        [String]$Description   
    )
    begin {
        Message-PCXBegin

    }
    process {
                try {
                    Write-Host "We are creating new BootImage : $Name " -ForegroundColor Yellow
                    New-CMBootImage -Path $Path -Index $Index -Name $Name -Description $Description
                    Write-Host "BootImage $Name is created." -ForegroundColor Green
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
        Message-PCXEnds

    }
}

 
Usage Example
New-PCXCMBootImage -Path "\\192.168.25.214\Package_Source\OSD\boot_images\x64\boot.PS100067.wim" -Index 1 -Name "Boot Image(x64)" -Description "This boot image is created during setup."

<#
Ms-Document
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/new-cmbootimage?view=sccm-ps

Syntax
New-CMBootImage
    [-Description <String>]
    -Index <Int32>
    -Name <String>
    -Path <String>
    [-Version <String>]
    [-DisableWildcardHandling]
    [-ForceWildcardHandling]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]
    

Direct Command Line:
New-CMBootImage -Path "\\192.168.25.214\Package_Source\OSD\boot_images\x64\boot.PS100067.wim" -Index 1 -Name "Boot Image(x64)" -Description "This boot image is created during setup."

Function Usage Example :
New-PCXCMBootImage -Path "\\192.168.25.214\Package_Source\OSD\boot_images\x64\boot.PS100067.wim" -Index 1 -Name "Boot Image(x64)" -Description "This boot image is created during setup."
#>