<#
MS-Document : 
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/get-cmdevicecollectionexcludemembershiprule?view=sccm-ps

Syntax :
Get-CMDeviceCollectionExcludeMembershipRule
    -CollectionName <String>
    [-ExcludeCollectionName <String>]
    [<CommonParameters>]


Direct Command :
Get-CMDeviceCollectionExcludeMembershipRule -CollectionName $CollectionName

#>

# Function goes below :
function Read-ExcludeCollection { 
    param(
        [parameter(mandatory=$true, Position=0)]
        [Alias("Name","CLName")] 
        [string] $CollectionName
         )
Get-CMDeviceCollectionExcludeMembershipRule -CollectionName $CollectionName
}


<# 
Usage example :
Read-ExcludeCollection  -CollectionName "PKG_7zip_2.0.0_01[Available]"
#>









