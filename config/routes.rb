Rails.application.routes.draw do
  resources :albums
  resources :artists

  get "up" => "rails/health#show", as: :rails_health_check

  root "albums#index"
end
