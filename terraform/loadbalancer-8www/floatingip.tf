resource "openstack_networking_floatingip_v2" "jumphostflip01" {
  region 		= "AMS"
  pool 			= "floating"
}

resource "openstack_networking_floatingip_v2" "www01flip01" {
  region                = "AMS"
  pool                  = "floating"
}

resource "openstack_networking_floatingip_v2" "www02flip01" {
  region                = "AMS"
  pool                  = "floating"
}

resource "openstack_networking_floatingip_v2" "www03flip01" {
  region                = "AMS"
  pool                  = "floating"
}

resource "openstack_networking_floatingip_v2" "www04flip01" {
  region                = "AMS"
  pool                  = "floating"
}

resource "openstack_networking_floatingip_v2" "www05flip01" {
  region                = "AMS"
  pool                  = "floating"
}
resource "openstack_networking_floatingip_v2" "www06flip01" {
  region                = "AMS"
  pool                  = "floating"
}
resource "openstack_networking_floatingip_v2" "www07flip01" {
  region                = "AMS"
  pool                  = "floating"
}
resource "openstack_networking_floatingip_v2" "www08flip01" {
  region                = "AMS"
  pool                  = "floating"
}
resource "openstack_networking_floatingip_v2" "loadbalancer01flip01" {
  region                = "AMS"
  pool                  = "floating"
}

resource "openstack_networking_floatingip_associate_v2" "jumphostflip01" {
  region      = "AMS"
  floating_ip = openstack_networking_floatingip_v2.jumphostflip01.address
  port_id     = openstack_networking_port_v2.jumphost_p1.id
}

resource "openstack_networking_floatingip_associate_v2" "www01flip01" {
  region      = "AMS"
  floating_ip = openstack_networking_floatingip_v2.www01flip01.address
  port_id     = openstack_networking_port_v2.www01_p1.id
}

resource "openstack_networking_floatingip_associate_v2" "www02flip01" {
  region      = "AMS"
  floating_ip = openstack_networking_floatingip_v2.www02flip01.address
  port_id     = openstack_networking_port_v2.www02_p1.id
}

resource "openstack_networking_floatingip_associate_v2" "www03flip01" {
  region      = "AMS"
  floating_ip = openstack_networking_floatingip_v2.www03flip01.address
  port_id     = openstack_networking_port_v2.www03_p1.id
}

resource "openstack_networking_floatingip_associate_v2" "www04flip01" {
  region      = "AMS"
  floating_ip = openstack_networking_floatingip_v2.www04flip01.address
  port_id     = openstack_networking_port_v2.www04_p1.id
}

resource "openstack_networking_floatingip_associate_v2" "www05flip01" {
  region      = "AMS"
  floating_ip = openstack_networking_floatingip_v2.www05flip01.address
  port_id     = openstack_networking_port_v2.www05_p1.id
}

resource "openstack_networking_floatingip_associate_v2" "www06flip01" {
  region      = "AMS"
  floating_ip = openstack_networking_floatingip_v2.www06flip01.address
  port_id     = openstack_networking_port_v2.www06_p1.id
}

resource "openstack_networking_floatingip_associate_v2" "www07flip01" {
  region      = "AMS"
  floating_ip = openstack_networking_floatingip_v2.www07flip01.address
  port_id     = openstack_networking_port_v2.www07_p1.id
}

resource "openstack_networking_floatingip_associate_v2" "www08flip01" {
  region      = "AMS"
  floating_ip = openstack_networking_floatingip_v2.www08flip01.address
  port_id     = openstack_networking_port_v2.www08_p1.id
}

resource "openstack_networking_floatingip_associate_v2" "loadbalancer01flip01" {
  region      = "AMS"
  floating_ip = openstack_networking_floatingip_v2.loadbalancer01flip01.address
  port_id     = openstack_networking_port_v2.loadbalancer01_p1.id
}
