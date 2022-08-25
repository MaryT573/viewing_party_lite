Rails.application.routes.draw do
  root 'landing#index'

  get '/register', to: 'landing#new'

  get '/users/:id/discover', to: 'movies#index', as: 'movies'
  post '/users/:id/discover', to: 'movies#search', as: 'search_movies'

  resources :users do
    resources :movies, except: [:index, :show]
  end
end
