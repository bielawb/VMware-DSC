# DSC and Ansible walk into vBar...
![Session Logo - author: Hanna Bielawska](media/DSC-Ansible-vBar.png)
## Demo - DSC

Planned demos:
- creating configuration with `New-VmwDscConfiguration`
- testing configuration using `Test-VmwDscConfiguration`
- setting configuration using `Start-VmwDscConfiguration`
- installation for PowerShell 7

## Content of the folder
Folder contains following files:
- sample VMware.vSphereDSC configuration ([Baseline.ps1](Baseline.ps1))
- "broken" configuration ([BaselineBroken.ps1](BaselineBroken.ps1))
- script with steps needed to run configuration ([Invoke-Dsc.ps1](Invoke-Dsc.ps1))