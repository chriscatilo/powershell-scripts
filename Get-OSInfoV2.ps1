$computername = Read-Host "Enter Computername"

Get-CimInstance -ClassName Win32_OperatingSystem `
    -ComputerName $computername | 

Select-Object -Property CSName.LastBootUpTime