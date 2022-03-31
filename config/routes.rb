Rails.application.routes.draw do
  devise_for :users
  root to: 'instruments#index'
  resources :users, only: [:create, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :instruments, except: :index do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:show, :index]
end
