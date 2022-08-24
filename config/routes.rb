Rails.application.routes.draw do
  root 'landing#index'

  get '/register', to: 'landing#new'

  get '/users/:id/discover', to: 'movies#index', as: 'movies'
  post '/users/:id/discover', to: 'movies#show', as: 'search_movies'
  get '/users/:id/movies/:movie_id', to: 'movies#show'

  resources :users do
    resources :events
  end
end
