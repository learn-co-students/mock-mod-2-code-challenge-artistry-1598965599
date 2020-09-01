Rails.application.routes.draw do
  get '/instruments', to: 'instruments#index', as: 'instruments'

  get '/artists', to: 'artists#index', as: 'artists'
  get '/artists/:id', to: 'artists#show', as: 'artist'
  get '/artists/new', to: 'artists#new', as: 'new_artist'
  post '/artists', to: 'artists#create'

  get '/artist_instruments/new', to: 'artist_instruments#new', as: 'new_artist_instrument'

  post '/artist_instruments', to: 'artist_instruments#create'

end
