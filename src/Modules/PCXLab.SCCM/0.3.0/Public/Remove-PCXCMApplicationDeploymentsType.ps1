function Remove-PCXCMApplicationDeploymentsType{
    param(
        [parameter(mandatory=$true, Position=0)]
        [Alias("AppName", "ApplicationName")]
         [string] $Name,

        [parameter(mandatory=$true, Position=1)]
        [Alias("Name","DTName")]
         [string] $DeploymentTypeName
    )   
    begin {
        Write-Host "Welcome to PCXLab automation" -ForegroundColor Yellow
    }

    process {
                try {
                    Write-Host "We are Deleting Application DeploymentType: $DeploymentTypeName " -ForegroundColor Yellow
                    Remove-CMDeploymentType -ApplicationName "$Name" -DeploymentTypeName "$DeploymentTypeName"
                    Write-Host "Application Deployment type $DeploymentTypeName is Deleted." -ForegroundColor Green
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

<# MS-Document : 
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/remove-cmdeploymenttype?view=sccm-ps

Direct Command :
Remove-CMDeploymentType -ApplicationName "PKG_7zip_2.0.1" -DeploymentTypeName "7-Zip 26.00 (x64 edition) -Windows Installer (*.msi file)"

Usage example :
Remove-PCXCMApplicationDeploymentsType -Name "PKG_7zip_2.0.1" -DeploymentTypeName "7-Zip 26.00 (x64 edition) -Windows Installer (*.msi file)"
#>








