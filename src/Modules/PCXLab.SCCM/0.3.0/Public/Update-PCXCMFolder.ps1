function  Set-PCXCMFolder{
    param(
        [parameter(Mandatory=$true, Position=0)]
        [Alias("Name", "OLName")]
         [string] $OldName,

        [parameter(Mandatory=$true, Position=1)]
        [Alias("Nmae", "NWName")]
         [string] $NewName,

        [parameter(Mandatory=$true, Position=2)] 
        [Alias("Path", "PFPath")]
        [string] $ParentFolderPath
    )

    # Start
        begin {
            Write-Host "We are updating Collection Folder : $NewName "
        }

        # Actuall Process goeas here
        process {
            Set-CMFolder -Name $OldName -NewName $NewName -ParentFolderPath $ParentFolderPath

        }

        # End in flow chart
        end {
            Write-Host "Folder update process completed : $NewName"
        }
}

<# 
MS-Document :
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/set-cmfolder?view=sccm-ps 

Direct Command :
Set-CMFolder -Name "<OLD_Name>" -NewName "<NEW_Name>" -ParentFolderPath "DeviceCollection"

Usage example :
Set-PCXCMFolder -OldName "TEST1" -NewName "TEST4" -ParentFolderPath "DeviceCollection"
#>


