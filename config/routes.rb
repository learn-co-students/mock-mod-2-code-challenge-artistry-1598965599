Rails.application.routes.draw do
  get 'instruments', to: 'instruments#index', as: 'instruments'

  get "/artists", to: "artists#index", as: "artists"
  get '/artists/new', to: 'artists#new', as: 'new_artist'
  get '/artists/:id', to: 'artists#show', as: 'artist'
  post 'artists', to: 'artists#create'

  get '/sessions/new', to: 'sessions#new', as: 'new_session'
  post '/sessions', to: 'sessions#create'
end
