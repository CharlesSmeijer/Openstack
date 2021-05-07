# Define required providers
terraform {
required_version = ">= 0.14.0"
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.35.0"
    }
  }
}

# Configure the OpenStack Provider
provider "openstack" {
  user_name   = "username@cloudvps.com"
  tenant_name = "default"
  password    = "wachtwoord"
  auth_url    = "https://identity.openstack.cloudvps.com/v3"
  region      = "AMS"
}
