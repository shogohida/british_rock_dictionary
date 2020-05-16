Rails.application.routes.draw do
  #get 'albums/index'
  #get 'albums/new'
  #get 'albums/showedit'
  #get 'songs/new'
  #get 'songs/edit'
  #get 'artists/index'
  #get 'artists/show'
  #get 'artists/new'
  #get 'artists/edit'
  root to: 'artists#index'
  resources :artists, only: [:index, :show, :new, :create] do
    resources :songs, only: [:new, :create]
  end
  resources :songs, only: [:destroy]
  # resources :albums
end
