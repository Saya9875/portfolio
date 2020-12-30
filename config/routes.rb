Rails.application.routes.draw do
  root 'static_pages#home'
  get  'static_pages/show'
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  resources :users, only: [:show]
end
