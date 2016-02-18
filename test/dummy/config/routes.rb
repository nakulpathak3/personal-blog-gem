Rails.application.routes.draw do

  mount PersonalBlog::Engine => "/personal_blog"
end
