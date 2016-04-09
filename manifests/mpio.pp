# == Class: windows_iscsi::mpio
# Configure multipath IO for iSCSI

class windows_iscsi::mpio {
  # Enable the MPIO Feature 
  exec {'Enable_WindowsFeature_MPIO':
    command  =>'Enable-WindowsOptionalFeature -Online -FeatureName MultipathIO',
    provider => 'powershell',
  }
  # Enable automatic claiming of iSCSI devices for MPIO 
  exec {'Enable_MSDSM_Automatic_Claim_BusType_iSCSI':
    command  =>'Enable-MSDSMAutomaticClaim -BusType iSCSI',
    provider => 'powershell',
  }
  # Set the default load balance policy of all newly claimed devices to Round Robin 
  exec {'Set_MSDSM_Global_Default_LoadBalance_Policy_RoundRobin':
    command  =>'Set-MSDSMGlobalDefaultLoadBalancePolicy -Policy RR',
    provider => 'powershell',
  }
}