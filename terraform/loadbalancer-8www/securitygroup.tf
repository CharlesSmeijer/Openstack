resource "openstack_compute_secgroup_v2" "jumphostsecgroup01" {
  # Theres only 1 region
  region                	= "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  name        			= "lbsecgroup_1"
  description 			= "Inbound jumphost port 22"

  rule {
    from_port   		= 22
    to_port     		= 22
    ip_protocol			= "tcp"
    cidr        		= "0.0.0.0/0"
  }
  rule {
    from_port   = -1
    to_port     = -1
    ip_protocol = "icmp"
    cidr        = "0.0.0.0/0"
  }
}

resource "openstack_compute_secgroup_v2" "www01secgroup01" {
  # Theres only 1 region
  region                        = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  name                          = "www01secgroup_1"
  description                   = "Inbound www01 port 22"

  rule {
    from_port                   = 22
    to_port                     = 22
    ip_protocol                 = "tcp"
    cidr                        = "0.0.0.0/0"
  }
  rule {
    from_port   = -1
    to_port     = -1
    ip_protocol = "icmp"
    cidr        = "0.0.0.0/0"
  }

  rule {
    from_port   = 80
    to_port     = 80
    ip_protocol = "tcp"
    cidr        = "0.0.0.0/0"
  }
}

resource "openstack_compute_secgroup_v2" "www02secgroup01" {
  # Theres only 1 region
  region                        = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  name                          = "www02secgroup_1"
  description                   = "Inbound www02 port 22"

  rule {
    from_port                   = 22
    to_port                     = 22
    ip_protocol                 = "tcp"
    cidr                        = "0.0.0.0/0"
  }
  rule {
    from_port   = -1
    to_port     = -1
    ip_protocol = "icmp"
    cidr        = "0.0.0.0/0"
  }

  rule {
    from_port   = 80
    to_port     = 80
    ip_protocol = "tcp"
    cidr        = "0.0.0.0/0"
  }
}

resource "openstack_compute_secgroup_v2" "www03secgroup01" {
  # Theres only 1 region
  region                        = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  name                          = "www03secgroup_1"
  description                   = "Inbound www03 port 22"

  rule {
    from_port                   = 22
    to_port                     = 22
    ip_protocol                 = "tcp"
    cidr                        = "0.0.0.0/0"
  }
  rule {
    from_port   = -1
    to_port     = -1
    ip_protocol = "icmp"
    cidr        = "0.0.0.0/0"
  }

  rule {
    from_port   = 80
    to_port     = 80
    ip_protocol = "tcp"
    cidr        = "0.0.0.0/0"
  }
}

resource "openstack_compute_secgroup_v2" "www04secgroup01" {
  # Theres only 1 region
  region                        = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  name                          = "www04secgroup_1"
  description                   = "Inbound www04 port 22"

  rule {
    from_port                   = 22
    to_port                     = 22
    ip_protocol                 = "tcp"
    cidr                        = "0.0.0.0/0"
  }
  rule {
    from_port   = -1
    to_port     = -1
    ip_protocol = "icmp"
    cidr        = "0.0.0.0/0"
  }

  rule {
    from_port   = 80
    to_port     = 80
    ip_protocol = "tcp"
    cidr        = "0.0.0.0/0"
  }
}

resource "openstack_compute_secgroup_v2" "www05secgroup01" {
  # Theres only 1 region
  region                        = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  name                          = "www05secgroup_1"
  description                   = "Inbound www05 port 22"

  rule {
    from_port                   = 22
    to_port                     = 22
    ip_protocol                 = "tcp"
    cidr                        = "0.0.0.0/0"
  }
  rule {
    from_port   = -1
    to_port     = -1
    ip_protocol = "icmp"
    cidr        = "0.0.0.0/0"
  }

  rule {
    from_port   = 80
    to_port     = 80
    ip_protocol = "tcp"
    cidr        = "0.0.0.0/0"
  }
}

resource "openstack_compute_secgroup_v2" "www06secgroup01" {
  # Theres only 1 region
  region                        = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  name                          = "www06secgroup_1"
  description                   = "Inbound www06 port 22"

  rule {
    from_port                   = 22
    to_port                     = 22
    ip_protocol                 = "tcp"
    cidr                        = "0.0.0.0/0"
  }
  rule {
    from_port   = -1
    to_port     = -1
    ip_protocol = "icmp"
    cidr        = "0.0.0.0/0"
  }

  rule {
    from_port   = 80
    to_port     = 80
    ip_protocol = "tcp"
    cidr        = "0.0.0.0/0"
  }
}

resource "openstack_compute_secgroup_v2" "www07secgroup01" {
  # Theres only 1 region
  region                        = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  name                          = "www07secgroup_1"
  description                   = "Inbound www07 port 22"

  rule {
    from_port                   = 22
    to_port                     = 22
    ip_protocol                 = "tcp"
    cidr                        = "0.0.0.0/0"
  }
  rule {
    from_port   = -1
    to_port     = -1
    ip_protocol = "icmp"
    cidr        = "0.0.0.0/0"
  }

  rule {
    from_port   = 80
    to_port     = 80
    ip_protocol = "tcp"
    cidr        = "0.0.0.0/0"
  }
}

resource "openstack_compute_secgroup_v2" "www08secgroup01" {
  # Theres only 1 region
  region                        = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  name                          = "www08secgroup_1"
  description                   = "Inbound www08 port 22"

  rule {
    from_port                   = 22
    to_port                     = 22
    ip_protocol                 = "tcp"
    cidr                        = "0.0.0.0/0"
  }
  rule {
    from_port   = -1
    to_port     = -1
    ip_protocol = "icmp"
    cidr        = "0.0.0.0/0"
  }

  rule {
    from_port   = 80
    to_port     = 80
    ip_protocol = "tcp"
    cidr        = "0.0.0.0/0"
  }
}

resource "openstack_compute_secgroup_v2" "loadbalancersecgroup01" {
  # Theres only 1 region
  region                        = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  name                          = "loadbalancer01secgroup_1"
  description                   = "Inbound loadbalancer01 port 22"
  rule {
    from_port   = -1
    to_port     = -1
    ip_protocol = "icmp"
    cidr        = "0.0.0.0/0"
  }

  rule {
    from_port   = 80
    to_port     = 80
    ip_protocol = "tcp"
    cidr        = "0.0.0.0/0"
  }
}
