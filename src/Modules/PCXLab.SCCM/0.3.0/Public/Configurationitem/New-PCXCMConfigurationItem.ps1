function New-PCXCMConfigurationItem {
    param (
        [Parameter(Mandatory = $true, Position = 0)] 
        [String]$Name,

        [Parameter(Mandatory = $true, Position = 0)] 
        [String]$Description,

        [Parameter(Mandatory = $true, Position = 0)] 
        [String]$Category,

        [Parameter(Mandatory = $true, Position = 0)] 
        [String]$CreationType   
    )
    begin {
        Write-PCXMessageBegin
    }
    Process {
        try {
            Write-Host "We are creating new ConfigurtionItem : $Name " -ForegroundColor Yellow
            New-CMConfigurationItem -Name $Name -Description $Description -Category $Category -CreationType $CategoryType   
            Write-Host "New CI $Name is created." -ForegroundColor Green
            Write-Host "We tried and successfuly created................."  -ForegroundColor Magenta
        }
        catch {
            <#Do this if a terminating exception happens#>
        }
        finally {
            <#Do this after the try block regardless of whether an exception occurred or not#>
        }
    }
    end {
        Write-PCXMessageEnd
    }  
}

<#
MS-Document:
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/new-cmconfigurationitem?view=sccm-ps

Direct Command:
New-CMConfigurationItem -Name "CI_Windows_Config3" -Description "Checks Windows OS compliance" -Category "Operating System" -CreationType WindowsOS

#Usage command:
New-PCXCMConfigurationItem -Name "CI_Windows_Config3" -Description "Checks Windows OS compliance" -Category "Operating System" -CreationType WindowsOS
#>
New-PCXCMConfigurationItem -Name "CI_Windows_Config3" -Description "Checks Windows OS compliance" -Category "Operating System" -CreationType WindowsOS
