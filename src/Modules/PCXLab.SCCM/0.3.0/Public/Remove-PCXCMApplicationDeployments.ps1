<#

#>

# Function goes below
function Remove-Deployments{
    param(
        [parameter(mandatory=$true, Position=0)] 
        [Alias("Name","AppName")]
        [string] $Name,

        [parameter(mandatory=$true, Position=1)] 
        [Alias("Name","CLName")]
        [string] $CollectionName
        
    )
    begin {
        Write-Host "Welcome to PCXLab automation" -ForegroundColor Yellow
    }

    process {
                try {
                    Write-Host "We are Deleting Application Deployments : $Name " -ForegroundColor Yellow
                    Remove-CMApplicationDeployment -Name "$Name" -CollectionName "$CollectionName"
                    Write-Host "Application Deployment is Deleted." -ForegroundColor Green
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
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/remove-cmapplicationdeployment?view=sccm-ps

Direct Command :
Remove-CMApplicationDeployment -Name "PKG_7zip_2.0.1" -CollectionName "AvailableCollection"

Usage example :
Remove-Deployments -Name "PKG_7zip_2.0.1" -CollectionName "AvailableCollection"
Remove-Deployments -Name "PKG_7zip_2.0.1" -CollectionName "AvailableCollection" 
Remove-Deployments -Name "PKG_7zip_2.0.1" -CollectionName "InstallCollection"
#>










