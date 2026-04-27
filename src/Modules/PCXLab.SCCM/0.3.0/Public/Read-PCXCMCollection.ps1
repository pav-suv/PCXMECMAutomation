<#
MS-Document : 
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/get-cmdevicecollection?view=sccm-ps

Syntax :
Get-CMDeviceCollection
    [-Name <String>]
    [<CommonParameters>]

Direct Command :
Get-CMDeviceCollection -Name $CollectionName
#>

# Function goes below :
function Read-PCXCMCollection { 
    param(
        [parameter(mandatory=$true, Position=0)] 
        [Alias("Name","CLName")]
        [string] $CollectionName
    )
    
    Get-CMDeviceCollection -Name $CollectionName
}

<# 
Usage example :
Read-PCXCMCollection -CollectionName "PKG_7zip_2.0.0_01[Available]"
Read-PCXCMCollection -CollectionName "PKG_7zip_2.0.0_01[Install]"
Read-PCXCMCollection -CollectionName "PKG_7zip_2.0.0_01[UnInstall]"
Read-PCXCMCollection -CollectionName "PKG_7zip_2.0.0_01[Exception]"
#>


 