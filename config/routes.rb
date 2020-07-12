Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'drivers#home'
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  resources :drivers, only: [:new, :create, :show]
end
