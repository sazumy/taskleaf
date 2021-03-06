Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  root to: 'tasks#index'

  namespace :admin do
    resources :users
  end
  
  resources :tasks do
    post :confirm, action: :confirm_new, on: :new
  end
end
