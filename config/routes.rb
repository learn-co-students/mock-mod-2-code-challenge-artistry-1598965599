Rails.application.routes.draw do
  get "/artists", to: "artists#index", as: "artists"
  get '/artists/new', to: 'artists#new', as: 'new_artist'
  post '/artists', to: 'artists#create'
  get '/artists/:id', to: 'artists#show', as: 'artist'

  get "/instruments", to: "instruments#index", as: "instruments"
  get '/instruments/new', to: 'instruments#new', as: 'new_instrument'
  post '/instruments', to: 'instruments#create'
  get '/instruments/:id', to: 'instruments#show', as: 'instrument'

  # get "/albums", to: "albums#index", as: "albums"
  get '/albums/new', to: 'albums#new', as: 'new_album'
  post '/albums', to: 'albums#create'
  # get '/albums/:id', to: 'albums#show', as: 'album'
end