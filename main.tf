terraform {
  required_providers {
    aci = {
      source = "CiscoDevNet/aci"
    }
  }
}


provider "aci" {
  username = "admin"
  password = "C1sc0123p"
  url      = "https://192.168.254.30"
}

module "aci" {
  source  = "netascode/nac-aci/aci"
  version = "0.7.0"

  yaml_directories = ["data"]

  manage_access_policies    = false
  manage_fabric_policies    = false
  manage_pod_policies       = false
  manage_node_policies      = false
  manage_interface_policies = false
  manage_tenants            = true
}
