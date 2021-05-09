Rails.application.routes.draw do
  get 'search/index'
  get 'current_user', to: 'current_user#index'
  get 'search/:query', to: 'search#index'
  get 'user_orders/:user_id', to: 'orders#user_orders'
  resources :users
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
