resource "openstack_networking_network_v2" "lbnet01" {
  # Theres only 1 region
  region                = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  name           	= "lbnet01"
  admin_state_up 	= "true"
}

resource "openstack_networking_subnet_v2" "lbsubnet01" {
  # Theres only 1 region
  region                = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  name       		= "lbsubnet01"
  description           = "Subnet lbsubnet01 / lbnet01"
  network_id 		= openstack_networking_network_v2.lbnet01.id
  cidr       		= "192.168.200.0/24"
  ip_version 		= 4
  allocation_pool {
          end   = "192.168.200.200"
          start = "192.168.200.100"
        }
}
