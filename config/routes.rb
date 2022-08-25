Rails.application.routes.draw do
  root 'landing#index'

  get '/register', to: 'landing#new'

  get '/users/:id/discover', to: 'movies#index', as: 'discover'
  post '/users/:id/discover', to: 'movies#search', as: 'search'
  post '/users/:id/trending', to: 'movies#trending', as: 'trending'

  resources :users do
    resources :movies, only: [:index, :show]
  end
end
