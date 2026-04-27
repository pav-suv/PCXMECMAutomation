<#
MS-Document : 
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/get-cmfolder?view=sccm-ps

Syntax :
Get-CMFolder
    [[-Name] <String>]
    [-InputObject <IResultObject>]
    [-ParentFolderPath <String>]
    [-TypeName <String>]
    [-IsEmpty <Boolean>]
    [-IsSearchFolder <Boolean>]
    [-SiteCode <String>]
    [-DisableWildcardHandling]
    [-ForceWildcardHandling]
    [<CommonParameters>]

Direct Command :
Get-CMFolder -Name "TEST" -ParentFolderPath "DeviceCollection"
#>

# Function goes below
function Read-PCXCMFolder{
    param(
        [parameter(Mandatory=$true, Position=0)] 
        [Alias("Name", "FN")]
        [string]$FolderName,

        [parameter(Mandatory=$true, Position=1)] 
        [Alias("Path", "FP")]
        [string]$ParentFolderPath
    )
Get-CMFolder -Name $FolderName -ParentFolderPath $ParentFolderPath
}

<# 
Usage example :
Read-PCXCMFolder -FolderName "TEST" -ParentFolderPath "DeviceCollection"
#>






