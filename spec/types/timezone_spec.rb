require 'spec_helper'

describe Serverspec::TimeZone do
 it 'has correct timezone' do
  expect(Serverspec::TimeZone::VERSION).to eq('0.0.1')
 end
end

describe time_zone('UTC') do
 it {should be_valid}
end
