$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "no_cms/admin/events/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "nocms-admin-events"
  s.version     = NoCms::Admin::Events::VERSION
  s.authors     = ["Simplelogica"]
  s.email       = ["gems@simplelogica.net"]
  s.homepage    = "https://github.com/simplelogica/nocms-pages"
  s.summary     = "NoCms engine for events integration in NoCms Admin"
  s.description = "NoCms engine for events integration in NoCms Admin"

  s.files = Dir["{app,config,db,lib}/**/*", "LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 4.1.1"

  s.add_development_dependency "sqlite3"
end
