<#
MS-Document : 
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/get-cmdeploymentpackage?view=sccm-ps

Syntax :
Get-CMDeploymentPackage
    [-DeploymentPackageName <String>]
    -DistributionPointName <String>
    [-DisableWildcardHandling]
    [-ForceWildcardHandling]
    [<CommonParameters>]

Direct Command :
     Get-CMDeploymentPackage -DistributionPointName $Distributionpoint
#>

# Function goes below :
function Read-PCXCMDeployment { 
    param(
        [parameter(mandatory=$true, Position=0)] 
        [Alias("Name","DSP")]
        [string] $Distributionpoint
        )
    Get-CMDeploymentPackage -DistributionPointName $Distributionpoint
}

<# 
Usage example :
 Read-PCXCMDeployment -Distributionpoint "CM01.CORP.PCXLAB.COM"
#>


