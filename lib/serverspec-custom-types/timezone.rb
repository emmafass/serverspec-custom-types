lib = File.dirname(__FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'version'

module Serverspec::Type
  class TimeZone < Base

    # example
    #   describe time_zone('UTC') do
    #     it {should be_valid}
    #   end
    #
    # @name [parameter]
    # @return [Boolean]
    def valid?
      cmd = @runner.run_command("timedatectl | grep Time")
      output = cmd.stdout
      if output.include? @name
        return true
      else 
        return false 
      end
    end

  end

  def time_zone(name)
    TimeZone.new(name)
  end
end

include Serverspec::Type
