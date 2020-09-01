Rails.application.routes.draw do
  # resources :talents
  # get '/talents', to: 'talents#index', as: 'talents'
  get '/talents/new', to: 'talents#new', as: 'new_talent'
  post '/talents', to: 'talents#create'

  # resources :instruments, only: [:index, :show, :new]
  get '/instruments', to: 'instruments#index', as: 'instruments'
  get '/instruments/new', to: 'instrument#new', as: 'new_instrument'
  post '/instruments', to: 'instruments#create'
  get '/instruments/:id', to: 'instruments#show', as: 'instrument'

  # resources :artists, only: [:index, :show,:new, :create]
  get "/artists", to: "artists#index", as: "artists"
  get '/artists/new', to: 'artists#new', as: 'new_artist'
  post '/artists', to: 'artists#create'
  get "/artist/:id", to: "artists#show", as: 'artist'
end
