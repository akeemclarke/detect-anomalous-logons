# Detecting After-Hours Logons on Windows

This PowerShell script identifies successful interactive (LogonType 2) and remote desktop (LogonType 10) logons that occur **outside regular business hours**.

## What It Does
- Parses Windows Event Logs (Event ID 4624)
- Filters logons before 8 AM or after 6PM
- Flags potentially suspicious logons

## Prereqisites
- Windows system with PowerShell 5.1 or later
- Access to local security event logs (requires Administrator privileges)
- Script must be run on the system where logon events are being collected
- Windows Event Logging must be enabled for Event ID 4624

## Installation
1. Clone the repository
```bash
git Clone
https://github.com/akeemclarke/detect-anomalous-logons.git
cd detect-anomalous-logons
```
2. Open PowerShell as Administrator
3. Run the script:
```powershell
.\detect-anomalous-logons.ps1
```

## Skills Demonstrated
- PowerShell scripting
- Windows event log analysis
- Threat hunting logic
- Basic detection engineering

## How to Run
```powershell
.\detect-anomalous-logons.ps1

```

## Example Output
![Script Output](Script%20Results.png)
