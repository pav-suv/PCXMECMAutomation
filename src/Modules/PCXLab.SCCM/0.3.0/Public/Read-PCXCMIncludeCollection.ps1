<#
MS-Document : 
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/get-cmdevicecollectionincludemembershiprule?view=sccm-ps

Syntax :
Get-CMDeviceCollectionIncludeMembershipRule
    -CollectionName <String>
    [-IncludeCollectionName <String>]
    [<CommonParameters>]

Direct Command :
Get-CMDeviceCollectionIncludeMembershipRule -CollectionName $CollectionName
#>

# Function goes below :
function Read-IncludeCollection { 
    param(
        [parameter(mandatory=$true, Position=0)] 
        [Alias("Name","CL")]
        [string] $CollectionName
        
    )
Get-CMDeviceCollectionIncludeMembershipRule -CollectionName $CollectionName   
}


<# 
Usage example :
Read-IncludeCollection -CollectionName "PKG_7zip_2.0.0_01[Install]"
#>
















