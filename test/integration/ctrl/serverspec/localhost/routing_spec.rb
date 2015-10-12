require_relative '../spec_helper'

describe routing_table do
  it do
    should have_entry(
      :destination => '10.33.0.0/24',
      :interface   => 'eth1',
    )
    should have_entry(
      :destination => '10.0.0.0/24',
      :interface   => 'br-ex',
      :gateway     => '172.24.4.2'
    )
    should have_entry(
      :destination => '172.24.4.0/24',
      :interface   => 'br-ex'
    )
  end
end
