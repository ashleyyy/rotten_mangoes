RottenMangoes::Application.routes.draw do

  namespace :admin do
    resources :users
  end

  resources :movies do
    resources :reviews, only: [:new, :create]
  end
  
  resources :users, only: [:new, :create, :show]
  resources :session, only: [:new, :create, :destroy]

  root to: 'movies#index'

end
