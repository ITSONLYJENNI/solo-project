Rails.application.routes.draw do
  devise_for :users

  root "weather#index"
  resources :cities, only: [:create]

end
