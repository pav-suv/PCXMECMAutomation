<#

#>

# Function goes below
function Remove-PCXCMExcludeCollection{
     param(
        [parameter(Mandatory=$true,Position=0)] 
        [Alias("CLName", "Name")]
        [string] $CollectionName,
        [parameter(Mandatory=$true,Position=1)]
        [Alias("Name", "ExcludeCL")]
         [string] $ExcludecollectionName
     )
    begin {
        Write-Host "Welcome to PCXLab automation" -ForegroundColor Yellow
    }

    process {
                try {
                    Write-Host "We are Deleting Excludecollection : $ExcludecollectionName " -ForegroundColor Yellow
                    Remove-CMCollectionExcludeMembershipRule -CollectionName "$CollectionName" -ExcludecollectionName "$ExcludecollectionName" -Force

                    Write-Host "ExcludeCollection $ExcludecollectionName is Deleted." -ForegroundColor Green
                    Write-Host "We tried and successfuly deleted................."  -ForegroundColor Magenta
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
MS-Document : 
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/remove-cmcollectionexcludemembershiprule?view=sccm-ps

Direct Command :
Remove-CMCollectionExcludeMembershipRule -CollectionName "$CollectionName" -Excludecollectionname "$ExcludecollectionName" -Force

Usage example :
Remove-PCXCMExcludeCollection -CollectionName "InstallCollection" -ExcludecollectionName "AvailableCollection"
#>

