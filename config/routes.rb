Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :posts
  resources :contacts
  mount Spree::Core::Engine, at: '/shop'
   get 'pages/about'
   get 'pages/home'
   root to: "pages#home"
end
