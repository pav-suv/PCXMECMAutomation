function Test {
    param (
        [Parameter(Mandatory = $true)]
        [String]
        $Name

        

    )   
    #$Name = "Ram.Kumar"
    $SplitName = $Name -split " "

    $FirstName = $SplitName[0]

    $SecondName = $SplitName[-1]
    
    Write-host "First Name is: $FirstName"  -ForegroundColor Cyan
    Write-host "Second Name is: $SecondName"  -ForegroundColor Cyan
   
}

Test -Name "Pavana Harshithraj mulki Poojary"                                        
#############################
<#
$Name = "Ram.Kumar"
$SplitName = $Name -split "\."

$FirstName = $SplitName[-2]
$SecondName = $SplitName[-1]

Write-host "First Name is: $FirstName"  -ForegroundColor Cyan
Write-host "Second Name is: $SecondName"  -ForegroundColor Cyan
#>
#-------------------------------------------------------------------------------------------------
