Rails.application.routes.draw do
  root 'static_pages#home'
  get  'users/:id/likes', to: 'users#likes'
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
  resources :likes, only: [:create, :destroy]
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end
end
