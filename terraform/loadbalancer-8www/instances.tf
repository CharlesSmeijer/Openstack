resource "openstack_compute_instance_v2" "jumphost" {
  # Theres only 1 region
  region                	= "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  availability_zone     	= "AMS-EQ3"
  name            		= "jumphost"
  image_id 			= "48945a34-a792-42e2-9dc3-0b0ab20ac5b6"
  flavor_id 			= "2008"
  key_pair        		= "wahnfried"
  security_groups 		= [openstack_compute_secgroup_v2.jumphostsecgroup01.name]

  network {
    port 			= openstack_networking_port_v2.jumphost_p1.id
  }
  user_data = file("post-install-jumphost.sh")
}

resource "openstack_compute_instance_v2" "www01" {
  # Theres only 1 region
  region                        = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  availability_zone             = "AMS-EQ3"
  name                          = "www01"
  image_id                      = "48945a34-a792-42e2-9dc3-0b0ab20ac5b6"
  flavor_id                     = "2008"
  key_pair                      = "wahnfried"
  security_groups               = [openstack_compute_secgroup_v2.www01secgroup01.name]

  network {
    port                        = openstack_networking_port_v2.www01_p1.id
  }
  user_data = file("post-install-www.sh")
}

resource "openstack_compute_instance_v2" "www02" {
  # Theres only 1 region
  region                        = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  availability_zone             = "AMS-EQ3"
  name                          = "www02"
  image_id                      = "48945a34-a792-42e2-9dc3-0b0ab20ac5b6"
  flavor_id                     = "2008"
  key_pair                      = "wahnfried"
  security_groups               = [openstack_compute_secgroup_v2.www02secgroup01.name]

  network {
    port                        = openstack_networking_port_v2.www02_p1.id
  }
  user_data = file("post-install-www.sh")
}

resource "openstack_compute_instance_v2" "www03" {
  # Theres only 1 region
  region                        = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  availability_zone             = "AMS-EQ3"
  name                          = "www03"
  image_id                      = "48945a34-a792-42e2-9dc3-0b0ab20ac5b6"
  flavor_id                     = "2008"
  key_pair                      = "wahnfried"
  security_groups               = [openstack_compute_secgroup_v2.www03secgroup01.name]

  network {
    port                        = openstack_networking_port_v2.www03_p1.id
  }
  user_data = file("post-install-www.sh")
}

resource "openstack_compute_instance_v2" "www04" {
  # Theres only 1 region
  region                        = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  availability_zone             = "AMS-EQ3"
  name                          = "www04"
  image_id                      = "48945a34-a792-42e2-9dc3-0b0ab20ac5b6"
  flavor_id                     = "2008"
  key_pair                      = "wahnfried"
  security_groups               = [openstack_compute_secgroup_v2.www04secgroup01.name]

  network {
    port                        = openstack_networking_port_v2.www04_p1.id
  }
  user_data = file("post-install-www.sh")
}

resource "openstack_compute_instance_v2" "www05" {
  # Theres only 1 region
  region                        = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  availability_zone             = "AMS-EQ3"
  name                          = "www05"
  image_id                      = "48945a34-a792-42e2-9dc3-0b0ab20ac5b6"
  flavor_id                     = "2008"
  key_pair                      = "wahnfried"
  security_groups               = [openstack_compute_secgroup_v2.www05secgroup01.name]

  network {
    port                        = openstack_networking_port_v2.www05_p1.id
  }
  user_data = file("post-install-www.sh")
}

resource "openstack_compute_instance_v2" "www06" {
  # Theres only 1 region
  region                        = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  availability_zone             = "AMS-EQ3"
  name                          = "www06"
  image_id                      = "48945a34-a792-42e2-9dc3-0b0ab20ac5b6"
  flavor_id                     = "2008"
  key_pair                      = "wahnfried"
  security_groups               = [openstack_compute_secgroup_v2.www06secgroup01.name]

  network {
    port                        = openstack_networking_port_v2.www06_p1.id
  }
  user_data = file("post-install-www.sh")
}

resource "openstack_compute_instance_v2" "www07" {
  # Theres only 1 region
  region                        = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  availability_zone             = "AMS-EQ3"
  name                          = "www07"
  image_id                      = "48945a34-a792-42e2-9dc3-0b0ab20ac5b6"
  flavor_id                     = "2008"
  key_pair                      = "wahnfried"
  security_groups               = [openstack_compute_secgroup_v2.www07secgroup01.name]

  network {
    port                        = openstack_networking_port_v2.www07_p1.id
  }
  user_data = file("post-install-www.sh")
}

resource "openstack_compute_instance_v2" "www08" {
  # Theres only 1 region
  region                        = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  availability_zone             = "AMS-EQ3"
  name                          = "www08"
  image_id                      = "48945a34-a792-42e2-9dc3-0b0ab20ac5b6"
  flavor_id                     = "2008"
  key_pair                      = "wahnfried"
  security_groups               = [openstack_compute_secgroup_v2.www08secgroup01.name]

  network {
    port                        = openstack_networking_port_v2.www08_p1.id
  }
  user_data = file("post-install-www.sh")
}
