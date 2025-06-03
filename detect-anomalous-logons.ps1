$events = Get-WinEvent -FilterHashtable @{ 
	LogName ='Security'; 
	ID = 4624; 
} -MaxEvents 100

foreach ($event in $events) {
	$xml = [xml]$event.ToXml()
	$user = 
$xml.Event.EventData.Data[5].'#text'
	$logonType = 
$xml.Event.EventData.Data[8].'#text'
	$workstation = 
$xml.Event.EVentData.Data[18].'#text'
	$time = $event.TimeCreated

	# Filter for interactive (2) or RDP (10) logons
	if($logonType -eq '2' -or $logonType -eq '10') {
		if ($time.Hour -lt 8 -or $time.Hour -gt 18) {
			Write-Host "After-Hours Logon: $user at $time from workstation"
			}
		}
}
