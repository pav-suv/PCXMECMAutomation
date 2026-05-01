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
    

Direct Command
#New-CMBootImage -Path "\\Server99.Contoso.com\SMS_CCC\osd\boot\x64\boot.wim" -Index 1 -Name "Custom boot image" -Version "11" -Description "WinPE Boot Image x64 Approved 9/1/2012"
New-CMBootImage -Path "\\192.168.25.214\Package_Source\OSD\boot_images\x64\boot.PS100067.wim" -Index 1 -Name "Boot Image(x64)" -Description "This boot image is created during setup."
#>
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
        New-CMBootImage -Path $Path -Index $Index -Name $Name -Description $Description
        Write-Host "Boot Image added"
}

#Usage Example
New-PCXCMBootImage -Path "\\192.168.25.214\Package_Source\OSD\boot_images\x64\boot.PS100067.wim" -Index 1 -Name "Boot Image(x64)" -Description "This boot image is created during setup."
