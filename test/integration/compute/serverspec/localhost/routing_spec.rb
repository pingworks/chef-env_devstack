require_relative '../spec_helper'

describe routing_table do
  it do
    should have_entry(
      :destination => '10.33.0.0/24',
      :interface   => 'eth1',
    )
  end
end
