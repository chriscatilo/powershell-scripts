#IP Address
Resolve-DnsName $env:COMPUTERNAME | select Name, IPAddress

#OS Description
(Get-CimInstance Win32_OperatingSystem).Caption

#System Memory
((((Get-CimInstance Win32_PhysicalMemory).Capacity | measure -Sum).Sum) / 1gb)

#Last Reboot
(Get-CimInstance -ClassName Win32_OperatingSystem).LastBootUpTime

#Diskspace / freespace
(Invoke-Command { Get-PSDrive | where Name -EQ "C" }).free

#UserInfo
#(Get-ADUser -Identity $env:USERNAME -Property *).LastLogonDate

#Printer
Get-Printer | Select -Property Name,DriverName,Type | ft -AutoSize