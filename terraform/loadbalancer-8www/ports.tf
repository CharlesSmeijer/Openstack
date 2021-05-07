resource "openstack_networking_port_v2" "jumphost_p1" {
  # Theres only 1 region
  region                	= "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  name               		= "jumphost_p1"
  network_id         		= openstack_networking_network_v2.lbnet01.id
  admin_state_up     		= "true"
  security_group_ids 		= [openstack_compute_secgroup_v2.jumphostsecgroup01.id]

  fixed_ip {
    subnet_id  			= openstack_networking_subnet_v2.lbsubnet01.id
    ip_address 			= "192.168.200.10"
  }
}

resource "openstack_networking_port_v2" "www01_p1" {
  # Theres only 1 region
  region                        = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  name                          = "www01_p1"
  network_id                    = openstack_networking_network_v2.lbnet01.id
  admin_state_up                = "true"
  security_group_ids            = [openstack_compute_secgroup_v2.jumphostsecgroup01.id]

  fixed_ip {
    subnet_id                   = openstack_networking_subnet_v2.lbsubnet01.id
    ip_address                  = "192.168.200.21"
  }
}

resource "openstack_networking_port_v2" "www02_p1" {
  # Theres only 1 region
  region                        = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  name                          = "www02_p1"
  network_id                    = openstack_networking_network_v2.lbnet01.id
  admin_state_up                = "true"
  security_group_ids            = [openstack_compute_secgroup_v2.jumphostsecgroup01.id]

  fixed_ip {
    subnet_id                   = openstack_networking_subnet_v2.lbsubnet01.id
    ip_address                  = "192.168.200.22"
  }
}

resource "openstack_networking_port_v2" "www03_p1" {
  # Theres only 1 region
  region                        = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  name                          = "www03_p1"
  network_id                    = openstack_networking_network_v2.lbnet01.id
  admin_state_up                = "true"
  security_group_ids            = [openstack_compute_secgroup_v2.jumphostsecgroup01.id]

  fixed_ip {
    subnet_id                   = openstack_networking_subnet_v2.lbsubnet01.id
    ip_address                  = "192.168.200.23"
  }
}

resource "openstack_networking_port_v2" "www04_p1" {
  # Theres only 1 region
  region                        = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  name                          = "www04_p1"
  network_id                    = openstack_networking_network_v2.lbnet01.id
  admin_state_up                = "true"
  security_group_ids            = [openstack_compute_secgroup_v2.jumphostsecgroup01.id]

  fixed_ip {
    subnet_id                   = openstack_networking_subnet_v2.lbsubnet01.id
    ip_address                  = "192.168.200.24"
  }
}

resource "openstack_networking_port_v2" "www05_p1" {
  # Theres only 1 region
  region                        = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  name                          = "www05_p1"
  network_id                    = openstack_networking_network_v2.lbnet01.id
  admin_state_up                = "true"
  security_group_ids            = [openstack_compute_secgroup_v2.www05secgroup01.id]

  fixed_ip {
    subnet_id                   = openstack_networking_subnet_v2.lbsubnet01.id
    ip_address                  = "192.168.200.25"
  }
}

resource "openstack_networking_port_v2" "www06_p1" {
  # Theres only 1 region
  region                        = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  name                          = "www06_p1"
  network_id                    = openstack_networking_network_v2.lbnet01.id
  admin_state_up                = "true"
  security_group_ids            = [openstack_compute_secgroup_v2.www06secgroup01.id]

  fixed_ip {
    subnet_id                   = openstack_networking_subnet_v2.lbsubnet01.id
    ip_address                  = "192.168.200.26"
  }
}

resource "openstack_networking_port_v2" "www07_p1" {
  # Theres only 1 region
  region                        = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  name                          = "www07_p1"
  network_id                    = openstack_networking_network_v2.lbnet01.id
  admin_state_up                = "true"
  security_group_ids            = [openstack_compute_secgroup_v2.www07secgroup01.id]

  fixed_ip {
    subnet_id                   = openstack_networking_subnet_v2.lbsubnet01.id
    ip_address                  = "192.168.200.27"
  }
}

resource "openstack_networking_port_v2" "www08_p1" {
  # Theres only 1 region
  region                        = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  name                          = "www08_p1"
  network_id                    = openstack_networking_network_v2.lbnet01.id
  admin_state_up                = "true"
  security_group_ids            = [openstack_compute_secgroup_v2.www08secgroup01.id]

  fixed_ip {
    subnet_id                   = openstack_networking_subnet_v2.lbsubnet01.id
    ip_address                  = "192.168.200.28"
  }
}

resource "openstack_networking_port_v2" "loadbalancer01_p1" {
  # Theres only 1 region
  region                        = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  name                          = "loadbalancer01_p1"
  network_id                    = openstack_networking_network_v2.lbnet01.id
  admin_state_up                = "true"
  security_group_ids            = [openstack_compute_secgroup_v2.loadbalancersecgroup01.id]

  fixed_ip {
    subnet_id                   = openstack_networking_subnet_v2.lbsubnet01.id
    ip_address                  = "192.168.200.5"
  }
}
