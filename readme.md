# Personal Blog Gem

This is a simple Ruby on Rails engine that mounts a personal blog on any Rails application. It supports markdown. It is also completely customizable, i.e, you can add CSS and JS to style the blog any way you    want. Admin access is provided through a sessions controller that uses an environment variable to check the password.

## Todo till publishing 

- Fix rouge versus inline code styles clash
- Automatically write anonymous if comment without name
- Disallow empty post/comment creation/editing
- Make width 80% for mobile
- Make tags input box bigger
- Add delete post option, they need it.

These are the only things I will do until I publish. I will publish the moment this list is done
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
  
## Customizing Design

All the styles and javascripts can be easily overridden by adding files with the same name and at the same location as the engine. For example, if you'd like to override the [CSS for posts](https://github.com/nakulpathak3/personal-blog-gem/blob/master/app/assets/stylesheets/personal_blog/posts.css) create a file `app/assets/stylesheets/personal_blog/posts.css` in your Rails app and add the necessary styles there. Similarly all the styles and javascripts, by overridding the files [here](https://github.com/nakulpathak3/personal-blog-gem/blob/master/app/assets/).

## Contributing

Have a look at [todo.md](https://github.com/nakulpathak3/personal-blog-gem/blob/master/todo.md) for a general idea. I need a minimal sexy front-end for the blog. Something similar to lepture.com. Contact me at nakulpathak3@hotmail.com if you're confused about how to contribute.

Basic instructions

1. [Fork it] (https://github.com/nakulpathak3/personal_blog/fork) and then do `git clone https://github.com/<your_username>/personal-blog-gem` in your terminal to have it locally.
2. Make your changes in the local branch, commit and push to your fork.
3. Go to github.com/your_username/personal-blog-gem and click the `Make Pull Request` button.
4. Add a helpful description about your changes and you're done. I'll have a look ASAP (ETA: 1 day).

