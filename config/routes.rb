Rails.application.routes.draw do
  root 'static_pages#index'
  devise_for :users
  
  resources :courses, only: [:index, :show]
  namespace :instructor do
    resources :courses, only: [:new, :create, :show]
  end
end
