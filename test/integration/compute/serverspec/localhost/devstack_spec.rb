require_relative '../spec_helper'

describe file('/etc/nova/rootwrap.d/docker.filters') do
  it { should exist }
end

[
  'nova-compute',
].each do |proc|
  describe process(proc) do
    it { should be_running }
  end
end
