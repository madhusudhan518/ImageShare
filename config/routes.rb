Rails.application.routes.draw do
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
      }
  root to: 'photos#index'
  resources :albums do
    resources :photos
  end
  resources :photos
  resources :users
end
