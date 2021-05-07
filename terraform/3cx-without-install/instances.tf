resource "openstack_compute_instance_v2" "jumphost" {
  # Theres only 1 region
  region = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  availability_zone = "AMS-EQ3"
  name              = "jumphost"
  image_id          = "48945a34-a792-42e2-9dc3-0b0ab20ac5b6"
  flavor_id         = "2008"
  key_pair          = "wahnfried"
  security_groups   = ["allow-all"]

  network {
    port = openstack_networking_port_v2.jumphost_p1.id
  }
  user_data = file("post-install-jumphost.sh")
}

resource "openstack_compute_instance_v2" "driecx01" {
  # Theres only 1 region
  region = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  availability_zone = "AMS-EQ3"
  name              = "3cx01"
  image_id          = "48945a34-a792-42e2-9dc3-0b0ab20ac5b6"
  flavor_id         = "2008"
  key_pair          = "wahnfried"
  security_groups   = ["allow-all"]

  network {
    port = openstack_networking_port_v2.driecx01_p1.id
  }
  user_data = file("post-install-3cx.sh")
}

resource "openstack_compute_instance_v2" "driecx02" {
  # Theres only 1 region
  region = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  availability_zone = "AMS-EQ3"
  name              = "3cx02"
  image_id          = "48945a34-a792-42e2-9dc3-0b0ab20ac5b6"
  flavor_id         = "2008"
  key_pair          = "wahnfried"
  security_groups   = ["allow-all"]

  network {
    port = openstack_networking_port_v2.driecx02_p1.id
  }
  user_data = file("post-install-3cx.sh")
}
