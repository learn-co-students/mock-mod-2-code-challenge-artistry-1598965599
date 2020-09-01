Rails.application.routes.draw do
  resources :artist_instruments
  resources :instruments, only: [:index]
  get "/artists", to: "artists#index", as: "artists"
  get "/artists/new", to: "artists#new", as: "new_artist"
  post "/artists", to: "artists#create"
  get "/artists/:id", to: "artists#show", as: "artist"
  get "/instruments/:id", to: "instruments#show", as: "instrument"

  get "/artist_instruments/index", to: "artist_instruments#index", as "artist_instruments"
  get "/artist_instruments/new", to: "artist_instruments#new", as "new_artist_instruments"
  post "/artist_instruments", to: "artist_instruments#create"
end
