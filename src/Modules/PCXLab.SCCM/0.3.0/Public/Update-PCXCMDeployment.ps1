function Update-PCXCMPackageDeployment {
    param (
        $PackageName,
        $ProgramName,
        $CollectionName
    )
    # Start
        begin {
            Write-Host "We are updating Package Deolpyment: $ProgramName "
        }

        # Actuall Process goeas here
        process {
            Set-CMPackageDeployment -DeviceProgramName $ProgramName -PackageName $PackageName -CollectionName $CollectionName 

        }

        # End in flow chart
        end {
            Write-Host "ProgramName update process completed : $ProgramName"
        }
}
    
<# 
Direct Command :
    Set-CMPackageDeployment -DeviceProgramName $ProgramName -PackageName $PackageName
Usage example :
Update-PCXCMPackageDeployment -ProgramName "AVAILABLEProgram" -PackageName "PKG_7zip_2.0.0" -CollectionName "PKG_7zip_2.0.0_01[Available]"
#>




    
