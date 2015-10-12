#
# Cookbook Name:: devstack
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'env_devstack::compute'

node.default['devstack']['roles'].push('gateway')

include_recipe 'pw_base'
include_recipe 'devstack::sysctl'

include_recipe 'pw_openvpn'
include_recipe 'pw_wpasupplicant'
include_recipe 'pw_dnsmasq'
include_recipe 'devstack::network'
