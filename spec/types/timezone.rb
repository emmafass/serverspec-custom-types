require 'spec_helper'

describe Serverspec::TimeZone do
 it 'has correct timezone' do
  expect (Serverspec::TimeZone::VERSION).not_to be nil
 end
end
