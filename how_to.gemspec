$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "how_to/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name = "how_to"
  s.version = HowTo::VERSION
  s.authors = ["Muntasim Ahmed"]
  s.email = ["ahmed2tul@gmail.com"]
  s.homepage = "https://github.com/railscash/how_to"
  s.summary = "Rails engine that makes managing faq/manual easy and simple."
  s.description = "Multilingual CMS for managing faq, question/answer, manual etc."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.1"
  s.add_dependency "globalize"
  s.add_dependency "awesome_nested_set", ">= 2.1.0"

  s.add_development_dependency "sqlite3"
end
