Rails.application.routes.draw do
  root :to => 'products#index'

  resource :cart, only: [:show]
  resources :accounts
  devise_for :users

  resources :products

  resources :orders do
    resources :order_items
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
