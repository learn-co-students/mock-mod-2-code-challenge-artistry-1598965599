Rails.application.routes.draw do
  resources :instruments, only: [:index]
  get "/artists", to: "artists#index", as: "artists"
  get "/artists/:id", to: "artists#show", as: "artist"

  #get "/instruments", to: "instruments#index", as: "instruments"
  get "/instruments/:id", to: "instruments#show", as: "instrument"

  #I kept receiving an error that I wrote 2 routes with the same name for "as" for instrument 
  #got super stuck there

  #joiner file houses the collection_select



end
