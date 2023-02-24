$cred = Import-CliXml -Path ~/root.cred
Connect-VIServer -Server 192.168.18.100 -Credential $cred
$baseline = New-VmwDscConfiguration -Path ./Baseline.ps1 -Parameters @{ VMHost = '192.168.18.100' }
$baseline | Test-VmwDscConfiguration -Detailed
$baseline | Start-VmwDscConfiguration
# configuration broken?
$broken = New-VmwDscConfiguration -Path ./BaselineBroken.ps1 -Parameters @{ VMHost = '192.168.18.100' }