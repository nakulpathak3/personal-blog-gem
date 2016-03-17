$:.push File.expand_path("../lib", __FILE__)

require "personal_blog/version"

Gem::Specification.new do |s|
  s.name        = "personal_blog"
  s.version     = PersonalBlog::VERSION
  s.authors     = ["Nakul Pathak"]
  s.email       = ["nakulpathak3@hotmail.com"]
  s.homepage    = "http://github.com/nakulpathak3/personal-blog-gem"
  s.summary     = "Add a customizable, markdown-supported personal blog to any rails app"
  s.description = "PersonalBlog adds a responsive and completely customizable single-user blog to any Ruby on Rails application. It supports markdown and provides syntax highlighting with a clean, minimalistic design."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2"
  s.add_dependency "redcarpet", "~> 3.3"
  s.add_dependency "rouge", "~> 1.10"

  s.add_development_dependency "sqlite3"
end
