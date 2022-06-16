Rails.application.routes.draw do
  resources :posts
  resources :comments
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  get 'users/:id' => 'users#show', as: :user
  get 'users/index'
  root to: "posts#index"

end
