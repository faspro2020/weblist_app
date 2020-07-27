Rails.application.routes.draw do
  resources :categories, only: [:index, :create, :destroy, :show] do
    resources :links, only: [:create, :destroy]
  end
  
  root "categories#index"
end