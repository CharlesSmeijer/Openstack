resource "openstack_networking_network_v2" "driecx01-network" {
  # Theres only 1 region
  region = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  name           = "3cx01-network"
  admin_state_up = "true"
}

resource "openstack_networking_subnet_v2" "driecx01-subnet" {
  # Theres only 1 region
  region = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  name        = "3cx01-subnet"
  description = "Subnet 3CX network"
  network_id  = openstack_networking_network_v2.driecx01-network.id
  cidr        = "192.168.200.0/24"
  ip_version  = 4
  allocation_pool {
    end   = "192.168.200.200"
    start = "192.168.200.100"
  }
}
