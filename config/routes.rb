Rails.application.routes.draw do
  root 'landing#index'
  resources :products
end
