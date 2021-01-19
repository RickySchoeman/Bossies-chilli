Rails.application.routes.draw do
  root to: 'sauces#index' #---'pages#home'---

  resources :sauces, only: [:index, :show]
  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
