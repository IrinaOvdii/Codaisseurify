Rails.application.routes.draw do
  # For details on thRails.application.routes.draw do
  root 'artists#index'
  resources :artists do
    #delete '/:id/song' => 'songs#destroy', as: :set_artist
    resources :songs
  end

end
