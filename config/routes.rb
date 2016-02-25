PersonalBlog::Engine.routes.draw do

  get 'login', to: 'sessions#new', as: 'login'
  post 'login' => 'sessions#create'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  root to: "posts#index"
  resources :posts do
    resources :comments
  end
  resources :sessions

end
