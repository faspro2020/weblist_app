Rails.application.routes.draw do
  resources :categories, only: [:index, :create, :destroy, :show]
  resources :links, only: [:create]
  root "categories#index"
end