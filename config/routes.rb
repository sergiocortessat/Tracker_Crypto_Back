Rails.application.routes.draw do
  resources :coins
  resources :cryptos
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
