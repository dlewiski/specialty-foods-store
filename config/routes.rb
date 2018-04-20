Rails.application.routes.draw do
  root 'landing#index'
  resources :products do
    resources :reviews
  end
end
