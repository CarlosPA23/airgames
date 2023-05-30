Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  devise_for :users
  root to: "pages#home"

  resources :games do
    resources :reviews, only: %i[new create]
  end
end
