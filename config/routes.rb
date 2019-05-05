Rails.application.routes.draw do
  resources :vehicles
  resources :service_appointments
  resources :customers
  resources :parts
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: 'admin/dashboard#index'


  resources :purchase_orders
  resources :suppliers
  
end
