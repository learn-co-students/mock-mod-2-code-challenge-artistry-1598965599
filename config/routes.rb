Rails.application.routes.draw do
  resources :instruments, only: [:index]

  get "/artists", to: "artists#index", as: "artists" #all artists
  get '/artists/new', to: "artists#new", as: "new_artist" #form to create an artist
  post '/artists', to: "artists#create" #creates the artist
  get "/artists/:id", to: "artists#show", as: "artist" #specific artist

  get '/artistinstruments', to: "artistinstruments#index", as: "artistinstruments"
  get '/artistinstruments/new', to: "ArtistInstruments#new"
end
