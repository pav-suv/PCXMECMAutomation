function Set-PCXCMProgram{
    param (
        [Parameter(Mandatory=$true, Position=0)] 
        [String]$Name,

        [Parameter(Mandatory=$true, Position=0)] 
        [String]$ProgramName,
        
        [Parameter(Mandatory=$true, Position=0)] 
        [String]$ProgramNotification
    )
    begin {
       Write-PCXMessageBegin

    }
    process {
                try {
                    Write-Host "We are updationg program notification : $Name " -ForegroundColor Yellow
                    Set-CMProgram -PackageName $Name -ProgramName $ProgramName -SuppressProgramNotification $ProgramNotification
                    Write-Host "Program Notification is updated." -ForegroundColor Green
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
        Write-PCXMessageEnd

    }
}

<#
Ms-Document :
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/set-cmprogram?view=sccm-ps

Syntax :
Set-CMProgram
    [-PackageName <String>]
    [-ProgramName <String>]
    [-SuppressProgramNotification <Boolean>]
    
Direct Command Line :
    Set-CMProgram -PackageName "PKG_Notepad++_8.9.3" -ProgramName "PKG_Notepad++_8.9.3[INSTALL]" -StandardProgram -SuppressProgramNotification $false

Function Usage Example :
Set-PCXCMProgram -Name "PKG_Notepad++_8.9.3" -"PKG_Notepad++_8.9.3[INSTALL]" -ProgramNotification $false
#>




