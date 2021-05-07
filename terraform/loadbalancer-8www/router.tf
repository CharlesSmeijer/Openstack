resource "openstack_networking_router_v2" "lbrouter01" {
  region 		= "AMS"
  name                	= "lbrouter01"
  description	        = "Router for loadbalance network."
  external_network_id 	= "f9c73cd5-9e7b-4bfd-89eb-c2f4f584c326"
}

resource "openstack_networking_router_interface_v2" "lbrouter_interface01" {
  region		= "AMS"
  router_id 		= openstack_networking_router_v2.lbrouter01.id
  subnet_id 		= openstack_networking_subnet_v2.lbsubnet01.id
}
