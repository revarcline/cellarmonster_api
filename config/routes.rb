Rails.application.routes.draw do
  resources :bins
  resources :producers
  resources :countries
  resources :orders
  resources :varietals
  resources :bottles
  devise_for :users
end
