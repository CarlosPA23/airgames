Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  devise_for :users
  root to: "pages#home"

  resources :games do
    resources :bookings, only: %i[new create]
    resources :reviews, only: %i[new create]
  end

  resources :bookings, only: %i[index show edit update destroy]
  resources :reviews, only: [:destroy]

  get ':category', to: 'categories#index'
end
