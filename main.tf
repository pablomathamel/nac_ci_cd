terraform {
  required_providers {
    aci = {
      source = "CiscoDevNet/aci"
    }
  }
}


provider "aci" {
  username = "admin"
  password = "nryGbAwk5E6B3oAR"
  url      = "https://10.58.50.131"
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
