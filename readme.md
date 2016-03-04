# Personal Blog Gem

This is a simple Ruby on Rails engine that mounts a personal blog on any Rails application. It supports markdown. It is also completely customizable, i.e, you can add CSS and JS to style the blog any way you    want. Admin access is provided through a sessions controller that uses an environment variable to check the password.

## Usage

1. Install this gem, 
  - Add `gem 'personal_blog'` to your `Gemfile` and run `bundle`. 
  - You can also do `gem install personal_blog`.

2. In your `config/routes.rb`, add `mount PersonalBlog::Engine, at "/blog"` - assuming you'd like it to be available like website.com/blog or localhost:3000/blog in development.
3. Run `bin/rails personal_blog:install:migrations`. This will copy all the migrations from the engine into your app.
4. Run `rake db:migrate`. If you don't have a database already, you'd need to run `rake db:create`.
