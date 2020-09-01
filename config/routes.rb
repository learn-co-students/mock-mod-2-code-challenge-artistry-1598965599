Rails.application.routes.draw do
  resources :studios
  resources :instruments, only: [:index]
  get "/artists", to: "artists#index", as: "artists"
  get '/artists/new', to: 'artists#new', as: 'new_artist'
  post '/artists', to: 'artists#create'
  get "/artists/:id", to: "artists#show", as: "artist"
end
