resource "openstack_blockstorage_volume_v2" "jumphost-vol01" {
  # Theres only 1 region
  region                	= "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  availability_zone     	= "AMS-EQ3"
  name 				= "jumphost-vol01"
  size 				= 16
}

resource "openstack_compute_volume_attach_v2" "jumphost-v01" {
  instance_id           	= openstack_compute_instance_v2.jumphost.id
  region                	= "AMS"
  volume_id             	= openstack_blockstorage_volume_v2.jumphost-vol01.id
}

resource "openstack_blockstorage_volume_v2" "www01-vol01" {
  # Theres only 1 region
  region                        = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  availability_zone             = "AMS-EQ3"
  name                          = "www01-vol01"
  size                          = 16
}

resource "openstack_compute_volume_attach_v2" "www01-v01" {
  instance_id                   = openstack_compute_instance_v2.www01.id
  region                        = "AMS"
  volume_id                     = openstack_blockstorage_volume_v2.www01-vol01.id
}

resource "openstack_blockstorage_volume_v2" "www02-vol01" {
  # Theres only 1 region
  region                        = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  availability_zone             = "AMS-EQ3"
  name                          = "www02-vol01"
  size                          = 16
}

resource "openstack_compute_volume_attach_v2" "www02-v01" {
  instance_id                   = openstack_compute_instance_v2.www02.id
  region                        = "AMS"
  volume_id                     = openstack_blockstorage_volume_v2.www02-vol01.id
}

resource "openstack_blockstorage_volume_v2" "www03-vol01" {
  # Theres only 1 region
  region                        = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  availability_zone             = "AMS-EQ3"
  name                          = "www03-vol01"
  size                          = 16
}

resource "openstack_compute_volume_attach_v2" "www03-v01" {
  instance_id                   = openstack_compute_instance_v2.www03.id
  region                        = "AMS"
  volume_id                     = openstack_blockstorage_volume_v2.www03-vol01.id
}

resource "openstack_blockstorage_volume_v2" "www04-vol01" {
  # Theres only 1 region
  region                        = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  availability_zone             = "AMS-EQ3"
  name                          = "www04-vol01"
  size                          = 16
}

resource "openstack_compute_volume_attach_v2" "www04-v01" {
  instance_id                   = openstack_compute_instance_v2.www04.id
  region                        = "AMS"
  volume_id                     = openstack_blockstorage_volume_v2.www04-vol01.id
}

resource "openstack_blockstorage_volume_v2" "www05-vol01" {
  # Theres only 1 region
  region                        = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  availability_zone             = "AMS-EQ3"
  name                          = "www05-vol01"
  size                          = 16
}

resource "openstack_compute_volume_attach_v2" "www05-v01" {
  instance_id                   = openstack_compute_instance_v2.www05.id
  region                        = "AMS"
  volume_id                     = openstack_blockstorage_volume_v2.www05-vol01.id
}

resource "openstack_blockstorage_volume_v2" "www06-vol01" {
  # Theres only 1 region
  region                        = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  availability_zone             = "AMS-EQ3"
  name                          = "www06-vol01"
  size                          = 16
}

resource "openstack_compute_volume_attach_v2" "www06-v01" {
  instance_id                   = openstack_compute_instance_v2.www06.id
  region                        = "AMS"
  volume_id                     = openstack_blockstorage_volume_v2.www06-vol01.id
}

resource "openstack_blockstorage_volume_v2" "www07-vol01" {
  # Theres only 1 region
  region                        = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  availability_zone             = "AMS-EQ3"
  name                          = "www07-vol01"
  size                          = 16
}

resource "openstack_compute_volume_attach_v2" "www07-v01" {
  instance_id                   = openstack_compute_instance_v2.www07.id
  region                        = "AMS"
  volume_id                     = openstack_blockstorage_volume_v2.www07-vol01.id
}

resource "openstack_blockstorage_volume_v2" "www08-vol01" {
  # Theres only 1 region
  region                        = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  availability_zone             = "AMS-EQ3"
  name                          = "www08-vol01"
  size                          = 16
}

resource "openstack_compute_volume_attach_v2" "www08-v01" {
  instance_id                   = openstack_compute_instance_v2.www08.id
  region                        = "AMS"
  volume_id                     = openstack_blockstorage_volume_v2.www08-vol01.id
}
