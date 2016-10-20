$service = Get-Service | Where-Object Status -EQ "Stopped"
foreach ($a in $service) {
    $name = $a.DisplayName
    $status = $a.Status
    Write-Output "$name is $status"
}