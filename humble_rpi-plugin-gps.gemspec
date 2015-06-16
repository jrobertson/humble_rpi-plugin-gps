Gem::Specification.new do |s|
  s.name = 'humble_rpi-plugin-gps'
  s.version = '0.1.0'
  s.summary = 'A Humble_rpi plugin to publish the GPS location of the Raspberry Pi every 8 seconds by default.'
  s.authors = ['James Robertson']
  s.files = Dir['lib/humble_rpi-plugin-gps.rb']
  s.add_runtime_dependency('serialport_gps', '~> 0.2', '>=0.2.0') 
  s.signing_key = '../privatekeys/humble_rpi-plugin-gps.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@r0bertson.co.uk'
  s.homepage = 'https://github.com/jrobertson/humble_rpi-plugin-gps'
end
