Rails.application.routes.draw do
  resources :artist_instruments
  resources :instruments, only: [:index]
  get "/artists", to: "artists#index", as: "artists"
end
