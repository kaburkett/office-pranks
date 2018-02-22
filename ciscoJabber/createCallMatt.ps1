$action = New-ScheduledTaskAction -Execute 'C:\Program Files (x86)\Cisco Systems\Cisco Jabber\CiscoJabber.exe' -Argument '-URI ciscotel:3216'

$trigger =  New-ScheduledTaskTrigger -Daily -At 1:13pm

Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "Networking Console" -Description "Scheduled task that runs SCCM console."