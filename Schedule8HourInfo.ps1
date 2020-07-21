$Sta = New-ScheduledTaskAction -Execute "powershell" -Argument "D:\Projekty\myHelpers\Hello.ps1"
$Stt = New-ScheduledTaskTrigger -Once -At (Get-Date).AddSeconds(10)
Register-ScheduledTask Task01 -Action $Sta -Trigger $Stt