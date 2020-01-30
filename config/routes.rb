Rails.application.routes.draw do
  devise_for :users

  root "city#index"
  resources :cities, only: [:create]

end
