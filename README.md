# Detecting After-Hours Logons on Windows

This PowerShell script identifies successful interactive (LogonType 2) and remote desktop (LogonType 10) logons that occur **outside regular business hours**.

## What It Does
- Parses Windows Event Logs (Event ID 4624)
- Filters logons before 8 AM or after 6PM
- Flags potentially suspicious logons

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
