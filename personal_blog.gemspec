$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "personal_blog/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "personal_blog"
  s.version     = PersonalBlog::VERSION
  s.authors     = ["Nakul Pathak"]
  s.email       = ["nakulpathak3@hotmail.com"]
  s.homepage    = "http://nakulpathak.com"
  s.summary     = "Summary of PersonalBlog."
  s.description = "Description of PersonalBlog."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.5.1"

  s.add_development_dependency "sqlite3"
end
