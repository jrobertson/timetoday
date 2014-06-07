Gem::Specification.new do |s|
  s.name = 'timetoday'
  s.version = '0.1.8'
  s.summary = 'timetoday'
  s.files = Dir['lib/**/*.rb']
  s.add_runtime_dependency('chronic_duration', '~> 0.1', '>=0.10.4')  
  s.authors = ['James Robertson'] 
  s.signing_key = '../privatekeys/timetoday.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@r0bertson.co.uk'
  s.homepage = 'https://github.com/jrobertson/timetoday'
  s.required_ruby_version = '>= 2.1.2'
end
