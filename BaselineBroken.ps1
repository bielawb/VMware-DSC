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
    }
}
