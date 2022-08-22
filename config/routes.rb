Rails.application.routes.draw do
  root 'landing#index'

  get '/register', to: 'landing#new'

  resources :users do
    resources :events
  end
end
