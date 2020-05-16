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
  root to: 'pages#home'
  resources :artists, only: [:index, :show, :new, :create, :edit, :update] do
    resources :songs, only: [:new, :create, :edit, :update, :destroy]
  end
  # resources :albums
end
