Param 
(
    [Parameter(Mandatory=$true)][string]$computerName    
)

$service = Get-Service -ComputerName $computerName
W
foreach ($a in $service) 
{
    $serviceStatus = $a.Status
    $serviceDisplayName = $a.DisplayName

    if ($serviceStatus -eq "Running")
    {
        Write-Output "$serviceDisplayName is $serviceStatus"
    }
    else 
    {
        Write-Output "$serviceDisplayName is $serviceStatus"
    }
}