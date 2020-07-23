Rails.application.routes.draw do
  get 'links/index'
  root "links#index"
end
