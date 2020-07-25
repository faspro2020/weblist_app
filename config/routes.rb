Rails.application.routes.draw do
  resources :categories, only: [:index, :create, :destroy, :show]
  root "categories#index"
end