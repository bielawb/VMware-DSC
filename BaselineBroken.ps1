param (
    [String]$VMHost
)

configuration Baseline {
    param (
        [String]$VMHost
    )

    Import-DscResource -ModuleName VMware.vSphereDSC

    vSphereNode $VMHost {
        VMHostPowerPolicy VMHostPowerPolicy {
            Name = $VMHost
            PowerPolicy = 'HighPerformance'
        }

        VMHostNtpSettings Ntp {
            Name = $VMHost
            NtpServer = 'pool.ntp.org'
            NtpServicePolicy = 'Automatic'
        }

        VMHostService NtpService {
            Name = $VMHost
            Key = 'ntpd'
            Running = $true
        }

        VMHostAdvancedSettings VMHostAdvancedSettings {
            Name = $VMHost
            AdvancedSettings = @{
                'UserVars.ESXiShellTimeOut' = 1800
                'UserVars.HostClientCEIPOptIn' = 2
                'UserVars.ProductLockerLocation' = '/locker/packages/vmtoolsRepo/'
                'Disk.QFullSampleSize' = 32
            }
        }

        VMHostSyslog VMHostSyslog {
            Name = $VMHost
            Loghost = 'udp://syslog.contoso.com:514'
        }
    }
}
