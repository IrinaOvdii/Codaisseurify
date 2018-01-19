Rails.application.routes.draw do
  # For details on thRails.application.routes.draw do

  resources :songs
  root "artists#index"
  resources :artists do
    resources :songs
  end

end
