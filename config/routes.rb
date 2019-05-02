Rails.application.routes.draw do
  resources :vehicles
  resources :service_appointments
  resources :customers
  resources :parts
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  #get 'pages/home'
  #root 'store#index', as: 'store_index'

  root to: 'admin/dashboard#index'
  get 'store/index'

  resources :purchase_orders
  resources :suppliers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
