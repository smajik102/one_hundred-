
Rails.application.routes.draw do
    root 'sessions#new'

    get '/login' => 'sessions#new', as: 'login'
    post '/login' => 'sessions#create'
    delete '/login' => 'sessions#destroy', as: 'logout'

    resources :users

    resources :workouts do
      resources :movements
    end

  end
