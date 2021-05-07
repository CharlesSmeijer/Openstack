resource "openstack_networking_floatingip_v2" "jumphostflip01" {
  region = "AMS"
  pool   = "floating"
}
resource "openstack_networking_floatingip_v2" "driecx01flip01" {
  region = "AMS"
  pool   = "floating"
}
resource "openstack_networking_floatingip_v2" "driecx02flip01" {
  region = "AMS"
  pool   = "floating"
}
resource "openstack_networking_floatingip_associate_v2" "jumphostflip01" {
  region      = "AMS"
  floating_ip = openstack_networking_floatingip_v2.jumphostflip01.address
  port_id     = openstack_networking_port_v2.jumphost_p1.id
}
resource "openstack_networking_floatingip_associate_v2" "driecx01flip01" {
  region      = "AMS"
  floating_ip = openstack_networking_floatingip_v2.driecx01flip01.address
  port_id     = openstack_networking_port_v2.driecx01_p1.id
}
resource "openstack_networking_floatingip_associate_v2" "driecx02flip01" {
  region      = "AMS"
  floating_ip = openstack_networking_floatingip_v2.driecx02flip01.address
  port_id     = openstack_networking_port_v2.driecx02_p1.id
}
