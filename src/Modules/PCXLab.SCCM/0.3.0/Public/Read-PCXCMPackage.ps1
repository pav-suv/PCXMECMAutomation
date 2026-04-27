<#
MS-Document : 
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/get-cmpackage?view=sccm-ps


Syntax :
Get-CMPackage
    [-Fast]
    [-Name <String>]
    [-PackageType <PackageType>]
    [-DisableWildcardHandling]
    [-ForceWildcardHandling]
    [<CommonParameters>]


Direct Command :
    Get-CMPackage -Name $PackageName

#>

# Function goes below
function Read-PCXCMPackage { 
    param(
        [parameter(mandatory=$true, Position=0)] 
        [Alias("Name","PKG")]
        [string] $PackageName
    )
    
    Get-CMPackage -Name $PackageName
}

<# 
Usage example :
 Read-PCXCMPackage -PackageName "APS_7zip_26.0.0"
#>





















    