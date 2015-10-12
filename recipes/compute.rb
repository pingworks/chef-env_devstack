#
# Cookbook Name:: devstack
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

node.default['devstack']['roles'].push('compute')

include_recipe 'pw_base'
include_recipe 'devstack::ubuntu-user'
include_recipe 'devstack::sysctl'

include_recipe 'pw_dockerhost'
include_recipe 'devstack::devstack'
include_recipe 'devstack::openstack-scripts'
include_recipe 'devstack::network'
