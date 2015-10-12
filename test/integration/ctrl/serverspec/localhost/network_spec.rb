require_relative '../spec_helper'

describe command('ovs-vsctl list-ports br-ex') do
  its(:stdout) { should_not match /^(eth|wlan|em)/ }
  its(:exit_status) { should eq 0 }
end

describe command('ip addr list dev eth1') do
  its(:stdout) { should match /10.33.0.10/ }
end

describe command('ip addr list dev br-ex') do
  its(:stdout) { should match /inet 172.24.4.1\/24/ }
  its(:exit_status) { should eq 0 }
end
