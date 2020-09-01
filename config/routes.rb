Rails.application.routes.draw do
  resources :instruments, only: [:index]
  get "/artists", to: "artists#index", as: "artists"
  get "/artists/:id", to: "artists#show", as: "artist"
end
