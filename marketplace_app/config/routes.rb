Rails.application.routes.draw do
  resources :stores
  get 'stores/index'
  root 'stores#index'
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
