Rails.application.routes.draw do
  resources :measurements
  resources :goals
  resources :coins, only: [:create, :index, :show]
  resources :users, only: [:create, :show, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
