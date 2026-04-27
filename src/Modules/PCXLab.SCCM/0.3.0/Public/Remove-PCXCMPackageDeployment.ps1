function Remove-PCXCMPackageDeployment{
     param(
        [parameter(Mandatory=$true, Position=0)]
        [Alias("Name","PKGName")]
        [string] $PackageName,

        [parameter(Mandatory=$true, Position=1)]
        [Alias("Nmae", "PgmName")]
        [string] $ProgramName
        )
begin {
        Write-Host "Welcome to PCXLab automation" -ForegroundColor Yellow
    }

    process {
                try {
                    Write-Host "We are Deleting Package Deployment : $ProgramName " -ForegroundColor Yellow
                    Remove-CMPackageDeployment -Name $PackageName -ProgramName $ProgramName -Force
                    Write-Host "Package Deployment $ProgramName is Deleted." -ForegroundColor Green
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
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/remove-cmpackagedeployment?view=sccm-ps

Direct Command :
     Remove-CMPackageDeployment -Name $packagename -ProgramName $programname -Force

Usage example :
Remove-PCXCMPackageDeployment -PackageName "PKG_7zip_2.0.0_01" -ProgramName "AvailableProgram"
Remove-PCXCMPackageDeployment -PackageName "PKG_7zip_2.0.0_01" -programName "InstallProgram"
Remove-PCXCMPackageDeployment -PackageName "PKG_7zip_2.0.0_01" -programName "UninstallProgram"
#>














    
