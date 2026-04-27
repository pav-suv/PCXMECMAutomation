function Remove-PCXCMProgram{
     param (
        [parameter(Mandatory=$true, Position=0)]
        [Alias("Id","PKGId")]
        [string]$PackageID,

        [parameter(Mandatory=$true, Position=1)]
        [Alias("Name","PrgmName")] 
        [string]$ProgramName
     )

     begin {
        Write-Host "Welcome to PCXLab automation" -ForegroundColor Yellow
    }

    process {
                try {
                    Write-Host "We are Deleting Package Program: $ProgramName " -ForegroundColor Yellow
                    Remove-CMProgram -PackageId $PackageID -ProgramName $ProgramName -Force
                    Write-Host "Package Program $ProgramName is Deleted." -ForegroundColor Green
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
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/remove-cmprogram?view=sccm-ps


Direct Command :
Remove-CMProgram -PackageId $PackageID -ProgramName $ProgramName -Force

Usage example :
Remove-PCXCMProgram -PackageId "PS100051" -ProgramName "AvailableProgram"
#>






