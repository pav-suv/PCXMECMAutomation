

#bootimage function created
New-PCXCMBootImage -Path "\\192.168.25.214\Package_Source\OSD\boot_images\x64\boot.PS100067.wim" -Index 1 -Name "Boot Image(x64)" -Description "This boot image is created during setup."




    Start-CMContentDistribution -BootImageName "Boot Image(x64)" -DistributionPointName "CM01.CORP.PCXLAB.COM" 
    Start-CMContentDistribution -BootImageName "Boot Image(x64)" -DistributionPointName "CM01.CORP.PCXLAB.COM" -DistributionPointGroupName "ALL Mangalore Group"

    Start-CMContentDistribution -DistributionPointName "CM01.CORP.PCXLAB.COM" -DistributionPointGroupName "ALL Mangalore Group"

    Start-CMContentDistribution -BootImageName "Boot Image(x64)" -DistributionPointName "C"
    Start-CMContentDistribution -BootImageName "Boot Image(x64)" -DistributionPointGroupName "ALL Mangalore DPs"

    Start-CMContentDistribution -BootImageId "CM200004" -DistributionPointName "CMDIV-TSQA04.CORP.CONTOSO.COM"
 Mangalore Group
Start-CMContentDistribution -PackageName "PKG_7zip_2.0.1" -DistributionPointGroupName "Project Britaniya"

Start-CMContentDistribution -PackageName "PKG_7zip_2.0.1" -DistributionPointGroupName "ALL Mangalore DPs" 

#function created
Start-CMContentDistribution
    -BootImageName <String[]>
    [-CollectionName <String[]>]
    [-DistributionPointGroupName <String[]>]
    [-DistributionPointName <String[]>]
    [-DisableWildcardHandling]
    [-ForceWildcardHandling]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]



    Add-CMDistributionPointToGroup
    -DistributionPointGroupName <String>
    -DistributionPointName <String>
    [-DisableWildcardHandling]
    [-ForceWildcardHandling]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]


    Add-CMDistributionPointToGroup -DistributionPointName "CM01.CORP.PCXLAB.COM"  
#------------------------------------------------------------------------------------------
 #userCollection - function created

New-CMUserCollection
    -LimitingCollectionName <String>
    -Name <String>
    [-Comment <String>]
    [-RefreshSchedule <IResultObject>]
    [-RefreshType <CollectionRefreshType>]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]


    New-CMUserCollection -Name "All Users and groups" -LimitingCollectionName "All Users and User Groups"
    #-----------------------------------------------------------------------------------------------------
Set-CMProgram
    [-PackageName <String>]
    [-ProgramName <String>]
    [-SuppressProgramNotification <Boolean>]
    

    #Set-CMProgram -PackageName "PKG_Notepad++_8.9.3" -ProgramName "PKG_Notepad++_8.9.3[INSTALL]" -SuppressProgramNotifications $false
    
    #Set-CMProgram -PackageId "PS100027" -ProgramName "PKG_Notepad++_8.9.3[INSTALL]" -StandardProgramName -SuppressProgramNotifications $false
   
    #Set-CMProgram -PackageId "PS100027" -StandardProgram -ProgramName "PKG_Notepad++_8.9.3[INSTALL]" -SuppressProgramNotifications $false

    #Set-CMProgram -PackageId "PS100027" -StandardProgramName "PKG_Notepad++_8.9.3[INSTALL]" -SuppressProgramNotifications $false

    #Set-CMProgram -PackageName "PKG_Notepad++_8.9.3" -ProgramName "PKG_Notepad++_8.9.3[INSTALL]" -StandardProgram -SuppressProgramNotification $false
#----------------------------------------------------------------------------------

    #Set-CMProgram -PackageName "PKG_Notepad++_8.9.3" -ProgramName "PKG_Notepad++_8.9.3[INSTALL]" -SuppressProgramNotifications $false
    
    Set-CMProgram -PackageName "PKG_Notepad++_8.9.3" -ProgramName "PKG_Notepad++_8.9.3[INSTALL]" -StandardProgram -SuppressProgramNotification $false

    #Set-CMProgram -PackageId "PS100027" -ProgramName "PKG_Notepad++_8.9.3[INSTALL]" -StandardProgramName -SuppressProgramNotifications $false
    #------------------------------------------------------------------------------------------------------------------------------------------------------------
    
    #----------------------------------------------------------------------------------------------------------------------------
    Add CMOperatingSystemImage :

    New-CMOperatingSystemImage
    [-Description <String>]
    -Name <String>
    -Path <String>
    [-Index <Int32>]
    [-Version <String>]
    [-DisableWildcardHandling]
    [-ForceWildcardHandling]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]

    New-CMOperatingSystemImage -Name "Windows 10 latest" -Path "\\192.168.25.214\Package_Source\OSD\OS_Images\REFW10X64-001.wim"

    #----------------------------------------------------------------------------------------------------------------------------Task sequence :

    N
    #------------------------------------------------------------------------------------------------------------------------
    Add-CMDistributionPointToGroup
    

    Start-CMContentDistribution -OperatingSystemImage "Windows 10 latest" -DistributionPointGroupName "ALL Mangalore DPs"

    Start-CMContentDistribution
    -OperatingSystemImageId <String[]>
    [-CollectionName <String[]>]
    [-DistributionPointGroupName <String[]>]
    [-DistributionPointName <String[]>]
    [-DisableWildcardHandling]
    [-ForceWildcardHandling]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]



    $OperatingSystemname = "Windows 10 latest"

    Start-CMContentDistribution -OperatingSystemImageId "PS10006C" -DistributionPointGroupName "ALL Mangalore DPs"

    Start-CMContentDistribution -OperatingSystemImage $OperatingSystemobkj -DistributionPointGroupName "All Mangalore DPs"



<#
    $OperatingSystemobkj = Get-CMOperatingSystemImage -Name "Windows 10 latest"

    $OperatingSystemname.Length
    $OperatingSystemobkj.SourceDate
    $OperatingSystemobkj[1]
    $OperatingSystemobkj.Name

    #>
#----------------------------------------------------------------------------------------------------------------
    New-CMTaskSequence
    -Name <String>
    [-BootImagePackageId <String>]
    [-CustomTaskSequence]
    [-Description <String>]
    [-HighPerformance <Boolean>]
    [-DisableWildcardHandling]
    [-ForceWildcardHandling]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]

    New-CMTaskSequence -Name "Custom" -BootImagePackageId "PS100069" -Description "CustomTaskSequence"

    #----------------------------------------------------------------------------------------
    #category is pending
    New-CMConfigurationItem
    -CreationType <CICreationType>
    -Name <String>
    [-Category <String[]>]
    [-Description <String>]
    [-DisableWildcardHandling]
    [-ForceWildcardHandling]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]


New-CMConfigurationItem -CreationType WindowsOS -Name "CI_Windows_Config" -Category "Windows"
#--------------------------------------------------------------------------------------------------------
https://learn.microsoft.com/en-us/powershell/module/configurationmanager/new-cmbaseline?view=sccm-ps

New-CMBaseline
    [-AllowComanagedClients]
    [-Category <String[]>]
    [-Description <String>]
    -Name <String>
    [-DisableWildcardHandling]
    [-ForceWildcardHandling]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]

    New-CMBaseline -Name "Windows_Baseline" 

#------------------------------------------------------------------------------------------------------------------------
Set-CMBaseline
    -Name <String>
    [-AddBaseline <String[]>]
    [-AddCategory <String[]>]
    [-AddOptionalConfigurationItem <String[]>]
    [-AddOSConfigurationItem <String[]>]
    [-AddProhibitedConfigurationItem <String[]>]
    [-AddRequiredConfigurationItem <String[]>]
    [-AddSoftwareUpdate <String[]>]
    [-AllowComanagedClients <Boolean>]
    [-ClearBaseline]
    [-ClearOptionalConfigurationItem]
    [-ClearOSConfigurationItem]
    [-ClearProhibitedConfigurationItem]
    [-ClearRequiredConfigurationItem]
    [-ClearSoftwareUpdate]
    [-Description <String>]
    [-DesiredConfigurationDigestPath <String>]
    [-NewName <String>]
    [-PassThru]
    [-RemoveBaseline <String[]>]
    [-RemoveCategory <String[]>]
    [-RemoveOptionalConfigurationItem <String[]>]
    [-RemoveOSConfigurationItem <String[]>]
    [-RemoveProhibitedConfigurationItem <String[]>]
    [-RemoveRequiredConfigurationItem <String[]>]
    [-RemoveSoftwareUpdate <String[]>]
    [-DisableWildcardHandling]
    [-ForceWildcardHandling]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]
    
    Set-CMBaseline -Name "CI_Windows_Config" -AddBaseline "Windows_Baseline"


    Get-CMBaseline "Windows_Baseline"
    Get-CMConfigurationItem -Name "CI_Windows_Config"
    Set-CMBaseline -Name "Windows_Baseline" -AddOSConfigurationItems "CI_Windows_Config"
    Set-CMBaseline -Name "Windows_Baseline" -AddRequiredConfigurationItem "CI_Windows_Config"


$ci = Get-CMConfigurationItem -Name "CI_Windows_Config" -Fast
Set-CMBaseline -Name "Windows_Baseline" -AddRequiredConfigurationItem $ci


$ci = Get-CMConfigurationItem -Name "CI_Windows_Config" -Fast
Set-CMBaseline -Name "Windows_Baseline" -AddRequiredConfigurationItem $ci.CI_ID

$ci = Get-CMConfigurationItem -Name "CI_Windows_Config" -Fast
Set-CMBaseline -Name "Windows_Baseline" -AddRequiredConfigurationItem $ci.CI_ID

$cis = Get-CMConfigurationItem -Name "CI_*" -Fast
Set-CMBaseline -Name "Windows_Baseline" -AddRequiredConfigurationItem ($cis | Select-Object -ExpandProperty CI_ID)


$ci = Get-CMConfigurationItem -Name "CI_Windows_Config"
Set-CMBaseline -Name "Windows_Baseline" -AddRequiredConfigurationItem $ci


Set-CMBaseline -Name "Windows_Baseline" -AddRequiredConfigurationItem (Get-CMConfigurationItem -Name "CI_Windows_Config").CI_ID


# Create a new Configuration Item
New-CMConfigurationItem `
    -Name "CI_Windows_Config1" `
    -Description "Checks Windows OS compliance" `
    -Category "Operating System" `
    -CreationType WindowsOS


# Create a new Baseline
New-CMBaseline `
    -Name "Windows_Baseline1" `
    -Description "Baseline for Windows compliance"


# Get the CI object
$ci = Get-CMConfigurationItem -Name "CI_Windows_Config1" -Fast

# Add the CI to the baseline using CI_ID
Set-CMBaseline -Name "Windows_Baseline1" -AddRequiredConfigurationItem $ci.CI_ID


# Step 1: Create a Configuration Item (example for Windows OS)
$ci = New-CMConfigurationItem `
    -Name "CI_Windows_Config" `
    -CreationType WindowsOS `
    -Description "Checks Windows OS compliance"

# Step 2: Create a Baseline
$baseline = New-CMBaseline `
    -Name "Windows_Baseline" `
    -Description "Baseline for Windows compliance"

# Step 3: Add the CI to the Baseline
Set-CMBaseline -Name $baseline.LocalizedDisplayName -AddRequiredConfigurationItem $ci.CI_ID

# Step 4: Verify
(Get-CMBaseline -Name "Windows_Baseline").RequiredConfigurationItems


$ci = Get-CMConfigurationItem -Name "CI_Windows_Config" -Fast
$ci.CI_ID

Set-CMBaseline -Name "Windows_Baseline" -AddRequiredConfigurationItem $ci.CI_ID










    