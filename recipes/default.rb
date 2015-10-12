#
# Cookbook Name:: env_devstack
# Recipe:: default
#
# Copyright (C) 2015 Christoph Lukas
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

if node['devstack']['roles'].include?('gateway') then
  include_recipe 'env_devstack::gateway'
end
if node['devstack']['roles'].include?('ctrl') then
  include_recipe 'env_devstack::ctrl'
end
if node['devstack']['roles'].include?('compute') then
  include_recipe 'env_devstack::compute'
end
