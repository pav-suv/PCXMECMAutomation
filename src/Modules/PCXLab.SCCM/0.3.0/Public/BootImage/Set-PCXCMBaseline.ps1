function Set-PCXCMBaseLine {
    param (
        [Parameter(Mandatory = $true)][String]$ParentBaseLineName,
        [Parameter(Mandatory = $true)][String]$ChildBaseLineName

    )
    begin {
        Write-PCXMessageBegin
    }

    Process {
        try {
            Write-Host "We are adding child baseline : $ChildBaseLineName to parent Baselines : $ParentBaseLineName " -ForegroundColor Yellow

            $ParentBaseLineObj = Get-CMBaseline -Name $ParentBaseLineName
            $ChildBaseLineObj = Get-CMBaseline -Name  $ChildBaseLineName

            Set-CMBaseline  -InputObject $ParentBaseLineObj  -AddBaseline $ChildBaseLineObj.CI_ID
            Write-Host "We tried and successfuly added baseline................."  -ForegroundColor Magenta

        }
        catch {
            <#Do this if a terminating exception happens#>
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
MS-Document (Set-CMbASELINE)
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/set-cmbaseline?view=sccm-ps

MS-Document (Get-CMbASELINE)
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/get-cmbaseline?view=sccm-ps

MS-Document (Write-Host)
https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/write-host?view=powershell-7.6
   
#Direct Command :
$ParentBaseLineObj = Get-CMBaseline -Name "Test BaseLine Parent"
$ChildBaseLineObj = Get-CMBaseline -Name  "Test BaseLine Child"


Set-CMBaseline -InputObject $ParentBaseLineObj -AddBaseline  $ChildBaseLineObj.CI_ID

#Usage command :
Set-PCXCMBaseLine -ParentBaseLineName "Test BaseLine Parent"  -ChildBaseLineName "Test BaseLine Child"
#>
