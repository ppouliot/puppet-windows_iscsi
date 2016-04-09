# == Class: windows_iscsi::msiscsi
class windows_iscsi::service (
  $ensure = windows_iscsi::params::ensure
} inherits windows_iscsi::params {


  service{'MsiSCSI':
    ensure => $windows_iscsi::ensure,
    enable => $windows_iscsi::enable,
  }

}