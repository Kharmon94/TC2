Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  mount Spree::Core::Engine, at: '/store'
  resources :products
  resources :posts
  resources :contacts
  resources :charges
   get 'pages/about'
   root to: "pages#home"
end
