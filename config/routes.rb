Rails.application.routes.draw do
  resources :categories
  devise_for :users
  root to: 'sklads#index'
  resources :sklads
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
