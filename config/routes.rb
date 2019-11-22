# frozen_string_literal: true

Rails.application.routes.draw do
  get 'pages/show'
  resources :categories, only: %i[index show]

  resources :products, only: %i[index show]

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'categories#index'
end
