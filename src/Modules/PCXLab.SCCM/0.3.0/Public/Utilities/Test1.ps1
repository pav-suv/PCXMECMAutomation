function Test1 {
    param (
        [Parameter(Mandatory = $true)]
        [String]
        $Path

    )  
    
    $pathSPlit = $Path -split "\\"

    $SoftwareName = $pathSPlit[-1]
    $Product = $pathSPlit[-2]
    $Company = $pathSPlit[-3]

    $VersionSPlit = $SoftwareName -split "_"
    $Version = $VersionSPlit[-1]

    Write-Host "Software Name: $SoftwareName" -ForegroundColor Yellow
    Write-Host "Company/Manufacturer: $Company" -ForegroundColor Yellow
    Write-Host "Product/Application: $Product" -ForegroundColor Yellow
    Write-Host "Version: $Version" -ForegroundColor Green
}

#Test -Path "\\192.168.25.214\Package_Source\Applications\Igor_Pavlov\7Zip\7Zip_26.0.0.0"

Test -Path "\\192.168.25.214\Package_Source\Applications\Don_Ho\Notepad++\Notepad++_8.9.3"