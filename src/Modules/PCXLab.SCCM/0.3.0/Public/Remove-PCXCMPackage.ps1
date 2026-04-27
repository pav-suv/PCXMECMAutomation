function Remove-PCXCMPackage{
     param (
        [parameter(Mandatory=$true, Position=0)]
        [Alias("Name","PKGName")]
        [string]$PackageName
        
     )

     begin {
        Write-Host "Welcome to PCXLab automation" -ForegroundColor Yellow
    }

    process {
                try {
                    Write-Host "We are Deleting PackageName : $PackageName " -ForegroundColor Yellow
                    Remove-CMPackage -Name "$PackageName" -Force
                    Write-Host "PackageName $PackageName is Deleted." -ForegroundColor Green
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
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/remove-cmpackage?view=sccm-ps

Direct Command :
     Remove-CMPackage -Name "$PackageName"

Usage example :
Remove-PCXCMPackage -PackageName "PKG_7zip_2.0.0_01"
Remove-PCXCMPackage -PackageName "PKG_7zip_2.0.0_01"
Remove-PCXCMPackage -PackageName "PKG_7zip_2.0.0"
Remove-PCXCMPackage -PackageName "PKGS_7zip_26.00"
#>

