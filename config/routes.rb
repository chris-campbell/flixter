Rails.application.routes.draw do
  root 'static_pages#index'
  devise_for :users
    
  namespace :instructor do
    resources :courses, only: [:new, :create, :show]
  end
end
