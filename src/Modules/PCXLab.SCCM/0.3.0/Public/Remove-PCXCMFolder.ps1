function Remove-PCXCMFolder {
    param (
        # Parameter help description
        [Parameter(Mandatory=$true)] 
        [String] $FolderName,

        [Parameter(Mandatory=$true)] 
        [String] $ParentFolderPath
    )
begin {
        Write-Host "Welcome to PCXLab automation" -ForegroundColor Yellow
    }

    process {
                try {
                    Write-Host "We are Deleting Folder : $FolderName " -ForegroundColor Yellow
                    Remove-CMFolder -Name $FolderName -ParentFolderPath $ParentFolderPath -Force
                    Write-Host "Folder $FolderName is Deleted." -ForegroundColor Green
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
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/remove-cmfolder?view=sccm-ps


Direct Command :
Remove-CMFolder -Name $FolderName -ParentFolderPath $ParentFolderPath -Force

Usage example :
Remove-PCXCMFolder -FolderName "TEST" -ParentFolderPath "DeviceCollection" 
#>
