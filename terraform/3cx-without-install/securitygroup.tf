resource "openstack_compute_secgroup_v2" "jumphostsecgroup01" {
  # Theres only 1 region
  region = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  name        = "lbsecgroup_1"
  description = "Inbound jumphost port 22"

  rule {
    from_port   = 22
    to_port     = 22
    ip_protocol = "tcp"
    cidr        = "0.0.0.0/0"
  }
  rule {
    from_port   = -1
    to_port     = -1
    ip_protocol = "icmp"
    cidr        = "0.0.0.0/0"
  }
}

resource "openstack_compute_secgroup_v2" "driecxsecgroup01" {
  # Theres only 1 region
  region = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  name        = "3cxsecgroup_1"
  description = "3CX security group"

  rule {
    from_port   = 22
    to_port     = 22
    ip_protocol = "tcp"
    cidr        = "0.0.0.0/0"
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
