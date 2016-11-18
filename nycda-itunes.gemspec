$LOAD_PATH.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |s|
  s.name = 'nycda-itunes'
  s.version = '0.0.1'
  s.platform = Gem::Platform::RUBY
  s.author = 'Mike'
  s.email = ['mike@dev.com']
  s.homepage = 'https://github.com/camerican/iTunes-API-Starter'
  s.summary = 'Demo of iTunes API wrapper.'
  s.description = 'Retrieve basic data on songs from iTunes.'
  s.license = 'GPLv2'

  s.required_ruby_version = '>= 1.9.3'

  s.files = 'lib/nycda-itunes.rb'
  #s.files += Dir['lib/nycda-itunes/**']

#  s.add_dependency 'retryable-rb'

  s.add_development_dependency 'rspec'
  # s.add_development_dependency 'rdoc'
  s.add_development_dependency 'bundler'
  # s.add_development_dependency 'jeweler'
  # s.add_development_dependency 'simplecov'
  # s.add_development_dependency 'webmock'
  # s.add_development_dependency 'vcr'


end