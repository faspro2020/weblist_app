Rails.application.routes.draw do
  resources :categories, only: [:index, :create, :destroy]
  root "categories#index"
end