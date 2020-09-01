Rails.application.routes.draw do
  resources :instruments, only: [:index]
  get "/artists", to: "artists#index", as: "artists"
  # get "/artists/new", to: "artists#new", as: "new_artist"

  get "/artists/:id", to: "artists#show", as: "artist"
end
