function Update-PCXCMCollection {
    param (
        [Parameter(Mandatory=$true, Position=0)]
        [String] $CollectionName,

        [Parameter(Mandatory=$true, Position=1)]
        [String] $comment   
    )
    # Start
        begin {
            Write-Host "We are updating Package Collection : $CollectionName "
        }

        # Actuall Process goeas here
        process {
            Set-CMDeviceCollection -Name $CollectionName -Comment $Comment

        }

        # End in flow chart
        end {
            Write-Host "CollectionName update process completed : $CollectionName "
        }
}

<# 
MS-Document : 
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/set-cmcollection?view=sccm-ps


Direct Command :
    Set-CMDeviceCollection -Name $CollectionName -Comment $Comment


Usage example :
Update-PCXCMCollection -CollectionName "PKG_7zip_2.0.0_01[Available]" -Comment "asd"
#>







