Rails.application.routes.draw do
  root to: 'sauces#index' #---'pages#home'---
  get 'index', to: 'sauces#index'
  get 'show', to: 'sauces#show'
  resources :sauces, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
