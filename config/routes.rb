Rails.application.routes.draw do
  resources :vehicles
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  #get 'pages/home'
  #root 'store#index', as: 'store_index'

  root to: 'admin/dashboard#index'
  get 'store/index'

  resources :service_appointments
  resources :clients
  resources :products
  resources :purchase_orders
  resources :suppliers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
