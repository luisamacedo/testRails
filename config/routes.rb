Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  resources :customers
  resources :lawyers
  resources :states

end
