# == Class: windows_iscsi::session
# == Parameters:
# *auth_type*
#   AuthenticationType: NONE,ONEWAYCHAP
# *initiator_instance_name*
#   InitiatorInstanceName   : ROOT\ISCSIPRT\0000_0 
# *initiator_node_address*
#   InitiatorNodeAddress    : iqn.1991-05.com.microsoft:deepcore.contoso.com 
# *initiator_node_address*
#   InitiatorPortalAddress  : 0.0.0.0 
# *initiator_side_id*
#   InitiatorSideIdentifier : 400001370000 
# *is_connected*
#   IsConnected             : True 
# *is_data_digest* 
#   IsDataDigest            : False
# *is_discovered*
#   IsDiscovered            : False
# *is_header_digest*
#   IsHeaderDigest          : False 
# *is_persistent*
#   IsPersistent            : False 
# *number_of_connections*
#   NumberOfConnections     : 1 
# *session_id*
#   SessionIdentifier       : fffffa80144f8430-4000013700000003 
# *target_node_address*
#   TargetNodeAddress       : iqn.1991-05.com.microsoft:deepspace-deepcore-target 
# *target_side_identifier*
#   TargetSideIdentifier    : 0300 
# *ps_computer_name*
#   PSComputerName

define windows_iscsi::session {

  $auth_type,
  $initiator_instance_name,
  $initiator_node_address,
  $initiator_node_address,
  $initiator_side_id,
  $is_connected,
  $is_data_digest, 
  $is_discovered,
  $is_header_digest,
  $is_persistent,
  $number_of_connections,
  $session_id,
  $target_node_address,
  $target_side_identifier,
  $ps_computer_name,

}