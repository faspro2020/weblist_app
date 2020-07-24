Rails.application.routes.draw do
  get 'categorys/index'
  root "categorys#index"
end