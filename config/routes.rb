Rails.application.routes.draw do
  resources :instruments, only: [:index]
  get "/artists", to: "artists#index", as: "artists"
end
