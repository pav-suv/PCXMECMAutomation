function Get-PCXAMetadataFromPath {
    param (
        [Parameter(Mandatory = $true)]
        [String]$Path
    )  
    $pathSPlit = $Path -split "\\"
    $SoftwareName = $pathSPlit[-1]
    $Product = $pathSPlit[-2]
    $Company = $pathSPlit[-3]

    $VersionSPlit = $SoftwareName -split "_"
    $Version = $VersionSPlit[-1]
    
    <#
    {int}$age
    [string]$Name
    [datetime]$Today
    #>
    
    $Metadata = [PSCustomObject]@{
        Color   = "Black"
        company = $Company 
        Product = $Product 
        Version = $Version
    }

    return $Metadata
}

Get-PCXAMetadataFromPath -Path "\\192.168.25.214\Package_Source\Applications\Don_Ho\Notepad++\Notepad++_8.9.3"

$PrductMetadata = Get-PCXAMetadataFromPath -Path "\\192.168.25.214\Package_Source\Applications\Don_Ho\Notepad++\Notepad++_8.9.3"
$PrductMetadata = Get-PCXAMetadataFromPath -Path "\\192.168.25.214\Package_Source\Applications\Igor_Pavlov\7Zip\7Zip_26.0.0.0"

$PrductMetadata.Product
$PrductMetadata.Color

Write-Host "Software Name: $($PrductMetadata.Color) " -ForegroundColor Yellow
Write-Host "Company/Manufacturer: $($PrductMetadata.Company)" -ForegroundColor Yellow
Write-Host "Product/Application: $($PrductMetadata.Product)" -ForegroundColor Yellow
Write-Host "Version: $($PrductMetadata.Version)" -ForegroundColor Green
#Test -Path "\\192.168.25.214\Package_Source\Applications\Igor_Pavlov\7Zip\7Zip_26.0.0.0"

Test2 -Path "\\192.168.25.214\Package_Source\Applications\Don_Ho\Notepad++\Notepad++_8.9.3"

Test1 -Path "\\192.168.25.214\Package_Source\Applications\Anydesk_GmbH\Anydesk\Anydesk_9.6"