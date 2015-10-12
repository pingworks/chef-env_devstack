require_relative '../spec_helper'

describe command('ip addr list dev eth1') do
  its(:stdout) { should match /10.33.0.11/ }
end
