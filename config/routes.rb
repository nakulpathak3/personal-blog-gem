PersonalBlog::Engine.routes.draw do
  root to: "articles#index"
  resources :articles
end
