#!/usr/bin/env bash
#
# Post install for openstack  hosts
#
echo "openstack floating ip list"
openstack floating ip list
echo "openstack port list"
openstack port list | grep "+-----------------------------\|Status\|www0[1-8]\|jumphost"
echo "openstack server list"
openstack server list | grep "+-----------------------\|Flavor\|www0[1-8]\|jumphost"
echo "openstack server show <servername>"
for id in $(openstack server list | grep "www0[1-8]\|jumphost" | awk '{print $2}' ) ; do echo "openstack server show $id" ; openstack server show $id ; done
echo "openstack security group list"
openstack security group list | grep "+------------------------\|Project\|www0[1-8]\|jumphost"
echo "openstack router list"
openstack router list | grep "+----------------------\|Project\|lbrouter01"
echo "openstack volume list"
openstack volume list | grep "+----------------------\|Size\|www0[1-8]\|jumphost"
echo "openstack network show lbnet"
openstack network show lbnet01
echo "openstack subnet list"
openstack subnet list | grep "+---------------------------\|Subnet\|lbsubnet01"

# load balancer part
echo "List loadbalancers"
neutron lbaas-loadbalancer-list
echo "List loadbalancer details lb01"
neutron lbaas-loadbalancer-show lb01
echo "List all loadbalancer pools"
neutron lbaas-pool-list
echo "List pool details lb01-show-http"
neutron lbaas-pool-show lb01-pool-http
echo "List lb01-pool-http details"
neutron lbaas-member-list lb01-pool-http
echo " List all member details"
for memberid in $(neutron lbaas-member-list lb01-pool-http | grep True | awk '{print $2}'); do neutron lbaas-member-show $memberid lb01-pool-http  ;done
echo "List lbaas listeners"
neutron lbaas-listener-list
echo "List lbaas listener lb01-http details"
neutron lbaas-listener-show lb01-http
