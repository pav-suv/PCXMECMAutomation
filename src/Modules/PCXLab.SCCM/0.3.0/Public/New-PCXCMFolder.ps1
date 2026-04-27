function  New-PCXCMFolder {
    param (
        [parameter(Mandatory=$true, Position=0)]
        [string]$ParentFolderPath,

        [parameter(Mandatory=$true, Position=1)]
        [string]$FolderName
    )
    begin {
        Write-Host "Welcome to PCXLab automation" -ForegroundColor Yellow
    }

    process {
                try {
                    Write-Host "We are creating new Folder : $FolderName " -ForegroundColor Yellow
                    New-CMFolder -ParentFolderPath $ParentFolderPath -Name $FolderName  
                    Write-Host "Folder $FolderName  is created." -ForegroundColor Green
                    Write-Host "We tried and successfuly created................."  -ForegroundColor Magenta
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
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/new-cmfolder?view=sccm-ps
 
Direct Command :
New-CMFolder -ParentFolderPath "DeviceCollection" -Name "Test"

Usage example :
New-PCXCMFolder -ParentFolderPath "DeviceCollection" -FolderName "TEST9" 
#>
