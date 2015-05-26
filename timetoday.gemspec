Gem::Specification.new do |s|
  s.name = 'timetoday'
  s.version = '0.2.0'
  s.summary = 'Returns a random time today, or within a few days (e.g. "4 days"), or between a few days (e.g. "2-3 days")'
  s.files = Dir['lib/timetoday.rb']
  s.add_runtime_dependency('app-routes', '~> 0.1', '>=0.1.8')
  s.add_runtime_dependency('chronic_duration', '~> 0.10', '>=0.10.6')
  s.authors = ['James Robertson'] 
  s.signing_key = '../privatekeys/timetoday.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@r0bertson.co.uk'
  s.homepage = 'https://github.com/jrobertson/timetoday'
  s.required_ruby_version = '>= 2.1.2'
end
