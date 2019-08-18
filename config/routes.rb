Rails.application.routes.draw do
  root to: 'photos#index'
  resources :photos
  resources :albums
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
