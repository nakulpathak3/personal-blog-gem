# Personal Blog Gem

[![Gem Version](https://badge.fury.io/rb/personal_blog.svg)](https://badge.fury.io/rb/personal_blog) [![Code Climate](https://codeclimate.com/github/nakulpathak3/personal-blog-gem/badges/gpa.svg)](https://codeclimate.com/github/nakulpathak3/personal-blog-gem)

##### If you're on version 0.0.2 of the gem, there is a bug in deleting comments leading to deleting of the post. Please run `bundle update personal_blog` to be on the version in which this issue is fixed (0.0.3)

PersonalBlog adds a responsive single-user blog to any Ruby on Rails application. It supports markdown and provides syntax highlighting with a clean, minimalistic design. It is a Ruby on Rails engine that is completely customizable, i.e, you can add CSS and JS to style the blog any way you want. It does not require a user model and is thus, very lightweight. Admin access to create, edit and delete posts is provided through an environment variable to check the password.

To see a live example of this gem being used, you can view my [blog](http://nakulpathak.com/blog).

## Usage

1. Install this gem, 
  - Add `gem 'personal_blog'` to your `Gemfile` and run `bundle`. 
  - You can also do `gem install personal_blog`.

2. In your `config/routes.rb`, add `mount PersonalBlog::Engine => "/blog"` - assuming you'd like it to be available like website.com/blog or localhost:3000/blog in development.
3. Run `bin/rake personal_blog:install:migrations`. This will copy all the migrations from the engine into your app.
4. Run `bin/rake db:migrate`.
5. You also need to set an environment variable called 'blog_password'. This is needed for letting only you have admin access to create, edit and delete blog posts.
  - For local testing, you can do `export blog_password=<your_password>` in your `~/.bash_profile` for bash and `~/.zshrc` for zsh. Don't forget to do `source ~/.bash_profile` or `source ~/.zshrc` after this.
  - For heroku, you can do `heroku config:set blog_password=<your_password>`. This [guide](https://devcenter.heroku.com/articles/config-vars) explains how environment variables work in heroku.
  - For nginx, add `env blog_password=<your_password>;` to your nginx.conf file. This goes outside of the `http` and `server` blocks. If you're not sure where your file is, do `sudo find / -name "nginx.conf"`.
  - For apache, have a look at the [SetEnv](https://httpd.apache.org/docs/2.4/mod/mod_env.html) directive.

If you're confused about how to use this gem, feel free to [send me a tweet](https://twitter.com/nakulpathak3)!
  
## Customizing Design

All the styles and javascripts can be easily overridden by adding files with the same name and at the same location as the engine. For example, if you'd like to override the [CSS for posts](https://github.com/nakulpathak3/personal-blog-gem/blob/master/app/assets/stylesheets/personal_blog/posts.css) create a file `app/assets/stylesheets/personal_blog/posts.css` in your Rails app and add the necessary styles there. Similarly all the styles and javascripts, by overridding the files [here](https://github.com/nakulpathak3/personal-blog-gem/blob/master/app/assets/).

## Contributing

Have a look at [todo.md](https://github.com/nakulpathak3/personal-blog-gem/blob/master/todo.md) for a general idea. Improvements on front-end would be great. Also, I'd love it if someone would start writing some tests the application. Contact me at nakulpathak3@hotmail.com if you're confused about how to contribute.

Basic instructions

1. [Fork it](https://github.com/nakulpathak3/personal_blog/fork) and then do `git clone https://github.com/<your_username>/personal-blog-gem` in your terminal to have it locally.
2. Make your changes in the local branch, commit and push to your fork.
3. Go to github.com/your_username/personal-blog-gem and click the `Make Pull Request` button.
4. Add a helpful description about your changes and you're done. I'll have a look ASAP (ETA: 1 day).

