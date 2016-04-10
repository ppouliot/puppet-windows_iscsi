# == Class: windows_iscsi
#
# https://blogs.msdn.microsoft.com/san/2012/07/31/managing-iscsi-initiator-connections-with-windows-powershell-on-windows-server-2012/
#
# === Parameters
# [*ensure*]
# [*enable*]
# [*mpio_policy*]
#   Which MPIO policy to use, default is RR
#
# === Examples
#
#  class { 'windows_iscsi':
#
#  }
#
# === Authors
#
# Peter J. Pouliot <peter@pouliot.net>
#
# === Copyright
#
# Copyright 2016 Peter J. Pouliot, unless otherwise noted.
#
class windows_iscsi (
  $ensure      = windows_iscsi::params::ensure,
  $enable      = windows_iscsi::params::enable,
  $mpio_policy = windows_iscsi::params::mpio_policy
} inherits windows_iscsi::params {
  notice("${module_name} configures iSCSI on Windows Platforms")

}

