Rails.application.routes.draw do
  root 'sessions#new'

  get '/login' => 'sessions#new', as: 'login'
  post '/login' => 'sessions#create'
  delete '/login' => 'sessions#destroy'

  resources :users


  resources :workouts do
    resources :movements

    delete 'movements' => 'movements#destroy', as: 'delete'
  end


  end
  
