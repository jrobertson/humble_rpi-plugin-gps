#!/usr/bin/env ruby

# file: humble_rpi-plugin-gps.rb

require 'serialport_gps'


class HumbleRPiPluginGps < SerialPortGPS

  def initialize(settings: {port: "/dev/ttyAMA0", baud_rate: 9600, 
                                             refresh_rate: 8}, variables: {})

    device_id = variables[:device_id] || 'pi'

    gps_notification = lambda do |x|
      
      variables[:notifier].notice "%s/gps: lat: %s lon: %s" % 
                                       [device_id,  x.latitude, x.longitude]
    end
    
    h = settings
    super(port: h[:port], baud_rate: h[:baud_rate], h[:refresh_rate], \
                                                  callback: gps_notification)    
  end

  alias on_start start  
  
end