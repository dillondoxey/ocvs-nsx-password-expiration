resource "sshcommand_command" "pw_extend" {
  
  for_each = toset(var.nsxvms)
  host = data.vsphere_virtual_machine.nsxvms[each.value].default_ip_address
  user = var.nsx_username
  password = var.ocvs_password
  
command = "clear user admin password-expiration"

}