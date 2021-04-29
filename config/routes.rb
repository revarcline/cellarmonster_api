Rails.application.routes.draw do
  get 'users', to: 'users#index'
  get 'current_user', to: 'current_user#index'
  resources :bins
  resources :producers
  resources :countries
  resources :orders
  resources :varietals
  resources :bottles
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  }, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
end
