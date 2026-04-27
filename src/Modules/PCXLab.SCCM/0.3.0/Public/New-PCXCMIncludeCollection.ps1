function New-PCXCMIncludeCollection{
    param(
        [parameter(Mandatory=$true, Position=0)] 
        [string] $CollectionName,

        [parameter(Mandatory=$true)] 
        [string] $IncludeCollection
    )
    begin {
        Write-Host "Welcome to PCXLab automation" -ForegroundColor Yellow
    }

    process {
                try {
                    Write-Host "We are adding IncludeCollection : $IncludeCollection " -ForegroundColor Yellow
                    Add-CMDeviceCollectionIncludeMembershipRule -CollectionName $CollectionName -IncludeCollectionName $IncludeCollection
                    Write-Host "IncludeCollection $IncludeCollection is created." -ForegroundColor Green
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
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/add-cmdevicecollectionincludemembershiprule?view=sccm-ps

Direct Command :
Add-CMDeviceCollectionIncludeMembershipRule -CollectionName "PKG_7zip_2.0.0_01[Install]" -IncludeCollectionName "PKG_7zip_2.0.0_01[Available]"

Usage example :
New-PCXCMIncludeCollection -CollectionName "PKG_7zip_2.0.0_01[Install]" -IncludeCollection "PKG_7zip_2.0.0_01[Available]"
#>












