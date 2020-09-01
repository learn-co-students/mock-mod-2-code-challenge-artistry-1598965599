Rails.application.routes.draw do
################### Signup #######################
  resources :signups

  ################# Instrument ###################
  resources :instruments, only: [:index]
  get '/instruments/:id', to: 'instruments#show', as: "instrument"
#################### Arttist #####################
  get "/artists", to: "artists#index", as: "artists"
  get '/artists/new', to: 'artists#new', as: "new_artist"
  post '/artists', to: 'artists#create'
  get "/artists/:id", to: "artists#show", as: "artist"

  root 'artists#index'
end
