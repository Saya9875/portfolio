Rails.application.routes.draw do
  root 'static_pages#home'
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  resources :users, only: [:index, :show, :destroy] do
    member do
      get :following, :followers, :likes
    end
  end
  resources :microposts,  only: [:index, :create, :show, :destroy] do
    resources :replies, only: [:create, :destroy]
  end
  resources :relationships,  only: [:create, :destroy]
  resources :favorite_relationships, only: [:create, :destroy]
  resources :items, only: [:index, :create, :edit, :show, :destroy] do
    resources :reviews, only: [:create]
  end
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end
end
