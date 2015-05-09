Rails.application.routes.draw do
  devise_for :users
  resources :users

  resources :categories do
    resources :posts
  end

  root to: 'users#index'
end
