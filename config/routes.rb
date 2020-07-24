Rails.application.routes.draw do
  resources :categorys, only: [:index,:create]
  root "categorys#index"
end