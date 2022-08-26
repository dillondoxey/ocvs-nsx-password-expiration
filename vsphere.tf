data "vsphere_datacenter" "dc01" {
  name = "oci-w01dc"
}

data "vsphere_virtual_machine" "nsxvms" {
  for_each = toset(var.nsxvms)
  name = each.value
  datacenter_id = data.vsphere_datacenter.dc01.id
}
