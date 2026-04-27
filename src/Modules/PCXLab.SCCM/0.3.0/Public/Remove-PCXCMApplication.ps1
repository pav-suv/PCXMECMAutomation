function Remove-PCXCMApplication{
    param(
        [parameter(mandatory=$true, Position=0)]
        [string]$Name   
    )
    begin {
        Write-Host "Welcome to PCXLab automation" -ForegroundColor Yellow
    }

    process {
                try {
                    Write-Host "We are Deleting Application : $Name " -ForegroundColor Yellow
                    Remove-CMApplication -ApplicationName "$Name" -Force
                    Write-Host "Application $Name is Deleted." -ForegroundColor Green
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
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/remove-cmapplication?view=sccm-ps

Direct Command :
 Remove-CMApplication -ApplicationName "PKG_7zip_2.0.1" -Force

Usage example :
 Remove-PCXCMApplication -Name "PKG_7zip_2.0.1" 
#>