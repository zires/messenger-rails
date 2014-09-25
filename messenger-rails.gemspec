$:.push File.expand_path("../lib", __FILE__)

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'messenger-rails'
  s.version     = '0.0.1'
  s.authors     = ['zires']
  s.email       = ['zshuaibin@gmail.com']
  s.homepage    = 'https://github.com/zires/messenger-rails'
  s.summary     = 'Rails assets pipeline for messenger.'
  s.description = 'Rails assets pipeline for messenger.'
  s.license     = 'MIT'

  s.files = Dir["{lib,vendor}/**/*", 'LICENSE', 'README.md']
  s.test_files = []

  s.add_dependency 'activesupport', '>= 3.0.0'

end
