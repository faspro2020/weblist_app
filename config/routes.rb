Rails.application.routes.draw do
  resources :categories, only: [:index,:create]
  root "categories#index"
end