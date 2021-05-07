#!/usr/bin/env bash
#
# Post install for www hosts
#

#mvd
sudo echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDIeSj50GsSQ/zL67N/IJj2eo+UZiUVUvtSd3Z2pas3mvor9QB2T0aY/mDCSeVYxCkZwJVZJ9uMq4HH1o1jsCeO0UhD0QH1JxgaePeg+13LKy0Y4ww0ePHRByYPL0w7zyE3Qn4QnLyY9xK5tBVuQ9DKADQ9NEekD56ODTZ3A71gsrerSX3Q8u5hzoVwqJQjAq3roc6Xs45XfiBYlEFvvDifYPSJklLrpEeC6yhOl7w21pZ6/70zaHsZoK7OH/CsB00RG6IgOBsSUfjDTdi3KzsHsVPJL9x698puBDg3bqGq4sOXJA+FzxdrQQTBwODZfhSKCh12KqFKEaXsl9LMfkuqLgB34S6PpyRXgCLtOeI4N9D7opf6YF4l1x9zzOX4OAAah5ozSONr+tXt6hzOzbG2mEmHnWRNaUuAtoNweghGPaS2JRPiCbSmMW2HUuCRfezPkBvFfqHihRxwGaEp9egKwqxKTSjZgeAXRbe/4nPaCMyqNjzYJD5yvExcwyH5yPM= martijn@martijn.office.cloudvps.nl" >> /home/ubuntu/.ssh/authorized_keys
#cs
sudo echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC88UEAQW/ygVm6q1EwBc203uQFkrbeUCXLfzEVHRnMpYLdmvlz6OqdZ8WIMdENcDNsbNqJN2NDcRaJFaTkikoyy13HwOYBcklPHFOtkgPpI2H26hw0jqPknXRkJqioauQTIJXmkD4evlhxpvNM5K81315uocBTArCj8KJ/tZMnNZjDd/E+9tq+B5XXOCYATP4mbeCxmBplLdC+XHe/IPDGTOX5yP1a4IDtIPCGUO0MEetfYofWVPgKf0UGWKFuFxQBgLXZDsBe6wc8lrvKUrrYaNZdu6hTley48IiKy06UP1/JGUbKcMTuSk2dTzviLxV2ks1xyKXGPuct6pU6YroB csmeijer@wahnfried.local" >> /home/ubuntu/.ssh/authorized_keys

#nicolle
sudo echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDGcqNRyy4k7iHBwOD5fCDb1xrNFTav67i2NtLXz9HTvs3xoCD7/ACPxkEQ9O7pXh/otF7SoGXll+xxittjsxudP0OD5WBjd2Wb8sb5Ggh25Z6Tn6NH1RES5ea2TyfBnrUj+bvojsRAcZ7wzG6ANT9iHeE6l92jc9yLYwa0xAmWkYyCRiEmyQqvXdkB1zsjmdT+7O+XNwSn+6YMkGn3VkTTBQR75txwTu3jURdsxrUEL6eeULnEoylRwMGOFJPoSKHYkGl6VKwkrUUfw+S2gkW34p3cPQiSEZaBifj32EYkbjij5zW9Lq0At5AgOpFBu9MW/1VBkAPNl3QgEXCd1BK7" >> /home/ubuntu/.ssh/authorized_keys

#
# Create partition on /dev/sdb
echo -e "o\nn\np\n1\n\n\nw" | sudo fdisk /dev/sdb >>/tmp/install.log

# format /dev/sdb1
sudo mkfs.ext4 /dev/sdb1 >>/tmp/install.log

#
# make mountpoint
sudo mkdir /mnt/www>>/tmp/install.log

#
# mount /dev/sdb1
sudo mount /dev/sdb1 /mnt/www>>/tmp/install.log

#
# chown recursive
sudo chown -R ubuntu:ubuntu /mnt/www>>/tmp/install.log

#
# apt update and apt upgrade
sudo apt update>>/tmp/install.log
sudo apt -y upgrade>>/tmp/apt-upgrade.log 

#
# Install apache2
sudo apt-get install apache2

#
# Doe iets met wwwroot
# Zet deze op /mnt/www

