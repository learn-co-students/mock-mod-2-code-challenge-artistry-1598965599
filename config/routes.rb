Rails.application.routes.draw do
  resources :instruments, only: [:index, :show, :new]
  resources :artists, only: [:index, :show,:new, :create]
  # get "/artists", to: "artists#index", as: "artists"
end
