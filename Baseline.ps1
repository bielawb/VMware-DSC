Param (
    [String]$VMHost
)

Configuration Baseline {
    Param (
        [String]$VMHost
    )

    Import-DscResource -ModuleName VMware.vSphereDSC

    vSphereNode $VMHost {
        VMHostPowerPolicy VMHostPowerPolicy {
            Name = $VMHost
            PowerPolicy = 'HighPerformance'
        }
    }
}
