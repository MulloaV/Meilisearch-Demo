Rails.application.routes.draw do
  resources :reviews
  resources :restaurants
  
  root to: 'restaurants#index'
end
