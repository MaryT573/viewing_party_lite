Rails.application.routes.draw do
  root 'landing#index'

  get '/register', to: 'landing#new'

  get '/discover', to: 'movies#index', as: 'movies'

  resources :users do
    resources :events
  end
end
