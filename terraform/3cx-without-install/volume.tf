resource "openstack_blockstorage_volume_v2" "driecx01-vol01" {
  # Theres only 1 region
  region = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  availability_zone = "AMS-EQ3"
  name              = "3cx01-vol01"
  size              = 16
}

resource "openstack_compute_volume_attach_v2" "driecx01-v01" {
  instance_id = openstack_compute_instance_v2.driecx01.id
  region      = "AMS"
  volume_id   = openstack_blockstorage_volume_v2.driecx01-vol01.id
}

resource "openstack_blockstorage_volume_v2" "driecx02-vol01" {
  # Theres only 1 region
  region = "AMS"
  # availability zone ( AMS-EQ1/AMS-EQ3/AMS-EUN )
  availability_zone = "AMS-EQ3"
  name              = "3cx02-vol01"
  size              = 16
}

resource "openstack_compute_volume_attach_v2" "driecx02-v01" {
  instance_id = openstack_compute_instance_v2.driecx02.id
  region      = "AMS"
  volume_id   = openstack_blockstorage_volume_v2.driecx02-vol01.id
}
