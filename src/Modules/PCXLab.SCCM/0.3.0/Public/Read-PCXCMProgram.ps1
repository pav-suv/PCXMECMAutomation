<#
MS-Document : 
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/get-cmprogram?view=sccm-ps

Syntax :
Get-CMProgram
    [-PackageName <String>]
    [-ProgramName <String>]
    [-DisableWildcardHandling]
    [-ForceWildcardHandling]
    [<CommonParameters>]

Direct Command :
    Get-CMProgram -ProgramName $ProgramName

#>

# Function goes below
function Read-PCXCMProgram { 
    param(
        [parameter(mandatory=$true)] [string] $ProgramName
    )
    
    Get-CMProgram -ProgramName $ProgramName
}

<# 
Usage example :
Read-PCXCMProgram -ProgramName "AvailableProgram"
Read-PCXCMProgram -ProgramName "InstallProgram"
Read-PCXCMProgram -ProgramName "UninstallProgram"
#>

















 
 