require_relative '../spec_helper'

describe command('cat /proc/sys/net/ipv4/ip_forward') do
  its(:stdout) { should match /^1$/ }
  its(:exit_status) { should eq 0 }
end

describe command('cat /proc/sys/net/ipv4/conf/default/rp_filter') do
  its(:stdout) { should match /^0$/ }
  its(:exit_status) { should eq 0 }
end

describe command('iptables -t nat -L POSTROUTING') do
  its(:stdout) { should match /^MASQUERADE/ }
  its(:exit_status) { should eq 0 }
end
