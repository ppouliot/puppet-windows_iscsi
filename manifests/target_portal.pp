# == Class: windows_iscsi::target
define windows_iscsi::target (){

  debug("Adding a new iscsi target portal named ${name}.")
  exec{"New_Iscsi_Target_Portal_${name}":
    command   => "New-IscsiTargetPortal -TargetPortalAddress ${name}",
	provider  => 'powershell',
    logoutput => true,
  } -> 

  exec{"Get_Iscsi_Target_Portal_${name}":
    command   => "Get-IscsiTargetPortal -TargetPortalAddress ${name}",
	provider  => 'powershell',
    logoutput => true,
  } ->   
  exec{"Connect_Iscsi_Target_Portal_${name}":
    command   => "Get-IscsiTargetPortal -TargetPortalAddress ${name}",
	provider  => 'powershell',
    logoutput => true,
  }
  
}