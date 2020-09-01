Rails.application.routes.draw do
  # resources :artist_instruments
  # resources :instruments, only: [:index]
  
  get "/artist_instruments", to: "artist_instruments#index", as: "artist_instruments"
  get "/artist_instruments/new", to: "artist_instruments#new", as: "new_artist_instrument"
  post "/artist_instruments", to: "artist_instruments#create"

  get "/artists", to: "artists#index", as: "artists"
  # get "/artists/new", to: "artists#new", as: "new_artist"
  get "/artists/:id", to: "artists#show", as: "artist"

  get "/instruments", to: "instruments#index", as: "instruments"

end
