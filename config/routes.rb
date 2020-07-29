Rails.application.routes.draw do
  devise_for :users
  resources :categories, only: [:index, :create, :destroy, :show] do
    resources :links, only: [:create, :destroy, :edit, :update]
  end
  
  root "categories#index"
end