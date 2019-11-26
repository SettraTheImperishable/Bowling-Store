# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  get 'pages/:permalink', to: 'pages#permalink', as: 'permalink'
  resources :categories, only: %i[index show]

  resources :products, only: %i[index show] do
    collection do
      get 'search_results'
    end
  end

  post 'products/add_to_cart/:product_id', to: 'products#add_to_cart', as: 'add_to_cart'
  delete 'products/remove_from_cart/:product_id', to: 'products#remove_from_cart', as: 'remove_from_cart'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'categories#index'
end
