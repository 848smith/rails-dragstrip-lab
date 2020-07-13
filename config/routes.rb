Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'drivers#home'
  match '/auth/:provider/callback', to: 'sessions#auth', via: [:get, :post]
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  get '/signout', to: 'sessions#destroy'
  resources :drivers, only: [:new, :create, :edit, :update]
  resources :drivers, only: [:show] do
    resources :vehicles, only: [:index, :show, :new, :destroy]
    resources :races, only: [:index]
  end
  resources :vehicles, only: [:show, :create]
  resources :tracks, only: [:index, :new, :create]
  resources :tracks, only: [:show] do
    resources :races, only: [:new, :create]
  end
  resources :races, only: [:create]
end
