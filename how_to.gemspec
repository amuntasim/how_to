$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "how_to/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name = "how_to"
  s.version = HowTo::VERSION
  s.authors = ["TODO: Your name"]
  s.email = ["TODO: Your email"]
  s.homepage = "TODO"
  s.summary = "TODO: Summary of HowTo."
  s.description = "TODO: Description of HowTo."
  s.license = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">=4.0", "<4.1"
  s.add_dependency "globalize"
  s.add_dependency "awesome_nested_set"

  s.add_development_dependency "sqlite3"
end
