resource "openstack_networking_port_v2" "jumphost_p1" {
  # Theres only 1 region
  region = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  name               = "jumphost_p1"
  description        = "Jumphost port 1"
  network_id         = openstack_networking_network_v2.driecx01-network.id
  admin_state_up     = "true"
  security_group_ids = [openstack_compute_secgroup_v2.jumphostsecgroup01.id]

  fixed_ip {
    subnet_id  = openstack_networking_subnet_v2.driecx01-subnet.id
    ip_address = "192.168.200.10"
  }
}

resource "openstack_networking_port_v2" "driecx01_p1" {
  # Theres only 1 region
  region = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  name               = "3cx01_p1"
  description        = "3cx01 port 1"
  network_id         = openstack_networking_network_v2.driecx01-network.id
  admin_state_up     = "true"
  security_group_ids = [openstack_compute_secgroup_v2.jumphostsecgroup01.id]

  fixed_ip {
    subnet_id  = openstack_networking_subnet_v2.driecx01-subnet.id
    ip_address = "192.168.200.21"
  }
}

resource "openstack_networking_port_v2" "driecx02_p1" {
  # Theres only 1 region
  region = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  name               = "3cx02_p1"
  description        = "3cx01 port 1"
  network_id         = openstack_networking_network_v2.driecx01-network.id
  admin_state_up     = "true"
  security_group_ids = [openstack_compute_secgroup_v2.jumphostsecgroup01.id]

  fixed_ip {
    subnet_id  = openstack_networking_subnet_v2.driecx01-subnet.id
    ip_address = "192.168.200.22"
  }
}
