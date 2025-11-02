Rails.application.routes.draw do
  devise_for :users
  resources :albums do
    resources :comments
  end
  resources :artists

  get "up" => "rails/health#show", as: :rails_health_check

  root "albums#index"
end
