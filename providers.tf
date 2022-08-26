terraform {
  required_providers {
    sshcommand = {
      source = "invidian/sshcommand"
      version = "0.2.2"
    }
  }
}

provider "sshcommand" {
  # Configuration options
}

provider "vsphere" {
  user                 = var.vcenter_username
  password             = var.ocvs_password
  vsphere_server       = var.vcenter_fqdn
  allow_unverified_ssl = true
}

