Rails.application.routes.draw do
  root to: "posts#index"
  resources :posts
  resources :comments
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :users

  resources :posts do
    resources :likes, only: [:create, :destroy]
    resources :comments
  end

  resources :comments, only: [:new, :create, :destroy] do
    resources :likes, only: [:create]
  end
end
