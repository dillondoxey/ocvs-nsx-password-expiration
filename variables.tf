variable "vcenter_fqdn" {
  type = string
}

variable "vcenter_username" {
  type = string
  default = "administrator@vsphere.local"
}

variable "ocvs_password" {
  type = string
}

variable "nsx_username" {
  type = string
  default = "admin"
}

variable "nsxvms" {
  type = list
  default = ["nsxt-01","nsxt-02","nsxt-03","nsx-edge-01","nsx-edge-02"]
}
