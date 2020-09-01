Rails.application.routes.draw do
  # resources :sessions
  # resources :instruments, only: [:index]

  get 'instruments', to: 'instruments#index', as: 'instruments'

  get "/artists", to: "artists#index", as: "artists"
  get '/artists/:id', to: 'artists#show', as: 'artist'

  get '/sessions/new', to: 'sessions#new', as: 'new_session'
  post '/sessions', to: 'sessions#create'
end
