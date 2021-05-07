# openstack_lb_loadbalancer_v2.lb01:
resource "openstack_lb_loadbalancer_v2" "lb01" {
    admin_state_up        = true
    loadbalancer_provider = "opencontrail"
    name                  = "lb01"
    region                = "AMS"
    security_group_ids    = [
        "b80bceca-9699-467e-a60e-205ba99b9234",
    ]
    vip_subnet_id         = openstack_networking_subnet_v2.lbsubnet01.id

    timeouts {}
}

# openstack_lb_member_v2.www01:
resource "openstack_lb_member_v2" "www01" {
    address        = "192.168.200.21"
    admin_state_up = true
    name           = "lb member www01"
    pool_id        = openstack_lb_pool_v2.lb01-pool-http.id
    protocol_port  = 80
    region         = "AMS"
    subnet_id      = openstack_networking_subnet_v2.lbsubnet01.id
    weight         = 1

    timeouts {}
}

# openstack_lb_member_v2.www02:
resource "openstack_lb_member_v2" "www02" {
    address        = "192.168.200.22"
    admin_state_up = true
    name           = "lb member www02"
    pool_id        = openstack_lb_pool_v2.lb01-pool-http.id
    protocol_port  = 80
    region         = "AMS"
    subnet_id      = openstack_networking_subnet_v2.lbsubnet01.id
    weight         = 1

    timeouts {}
}

# openstack_lb_member_v2.www03:
resource "openstack_lb_member_v2" "www03" {
    address        = "192.168.200.23"
    admin_state_up = true
    name           = "lb member www03"
    pool_id        = openstack_lb_pool_v2.lb01-pool-http.id
    protocol_port  = 80
    region         = "AMS"
    subnet_id      = openstack_networking_subnet_v2.lbsubnet01.id
    weight         = 1
    timeouts {}
}

# openstack_lb_member_v2.www04:
resource "openstack_lb_member_v2" "www04" {
    address        = "192.168.200.24"
    admin_state_up = true
    name           = "lb member www04"
    pool_id        = openstack_lb_pool_v2.lb01-pool-http.id
    protocol_port  = 80
    region         = "AMS"
    subnet_id      = openstack_networking_subnet_v2.lbsubnet01.id
    weight         = 1

    timeouts {}
}

# openstack_lb_member_v2.www05:
resource "openstack_lb_member_v2" "www05" {
    address        = "192.168.200.25"
    admin_state_up = true
    name           = "lb member www05"
    pool_id        = openstack_lb_pool_v2.lb01-pool-http.id
    protocol_port  = 80
    region         = "AMS"
    subnet_id      = openstack_networking_subnet_v2.lbsubnet01.id
    weight         = 1

    timeouts {}
}

# openstack_lb_member_v2.www06:
resource "openstack_lb_member_v2" "www06" {
    address        = "192.168.200.26"
    admin_state_up = true
    name           = "lb member www06"
    pool_id        = openstack_lb_pool_v2.lb01-pool-http.id
    protocol_port  = 80
    region         = "AMS"
    subnet_id      = openstack_networking_subnet_v2.lbsubnet01.id
    weight         = 1

    timeouts {}
}

# openstack_lb_member_v2.www07:
resource "openstack_lb_member_v2" "www07" {
    address        = "192.168.200.27"
    admin_state_up = true
    name           = "lb member www07"
    pool_id        = openstack_lb_pool_v2.lb01-pool-http.id
    protocol_port  = 80
    region         = "AMS"
     subnet_id      = openstack_networking_subnet_v2.lbsubnet01.id
    weight         = 1

    timeouts {}
}

# openstack_lb_member_v2.www08:
resource "openstack_lb_member_v2" "www08" {
    address        = "192.168.200.28"
    admin_state_up = true
    name           = "lb member www08"
    pool_id        = openstack_lb_pool_v2.lb01-pool-http.id
    protocol_port  = 80
    region         = "AMS"
    subnet_id      = openstack_networking_subnet_v2.lbsubnet01.id
    weight         = 1

    timeouts {}
}

# openstack_lb_listener_v2.lb01-http:
resource "openstack_lb_listener_v2" "lb01-listener-http" {
    admin_state_up     = true
    connection_limit   = -1
    loadbalancer_id    = openstack_lb_loadbalancer_v2.lb01.id
    name               = "lb01-http"
    protocol           = "HTTP"
    protocol_port      = 80
    region             = "AMS"
    sni_container_refs = []
    timeouts {}
}

# openstack_lb_pool_v2.lb01-pool-http:
resource "openstack_lb_pool_v2" "lb01-pool-http" {
    admin_state_up = true
    lb_method      = "ROUND_ROBIN"
#   loadbalancer_id = openstack_lb_loadbalancer_v2.lb01.id
    listener_id     = openstack_lb_listener_v2.lb01-listener-http.id
    name           = "lb01-pool-http"
    protocol       = "HTTP"
    region         = "AMS"
    persistence {
       type        = "APP_COOKIE"
       cookie_name = "lbcookie"
    }
    timeouts {}
}

