Rails.application.routes.draw do
  root 'static_pages#home'
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  resources :users, only: [:index, :show, :destroy] do
    member do
      get :following, :followers
    end
  end
  resources :microposts,  only: [:index, :create, :destroy]
  resources :relationships,  only: [:create, :destroy]
end
