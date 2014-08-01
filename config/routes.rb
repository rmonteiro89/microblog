Rails.application.routes.draw do
  resources :posts
  root 'posts#index'
  match '/new', to: 'posts#new', via: 'get'

end
