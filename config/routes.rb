PersonalBlog::Engine.routes.draw do
  get 'sessions/create'

  get 'sessions/destroy'

  root to: "posts#index"
  resources :posts do
    resources :comments
  end
end
